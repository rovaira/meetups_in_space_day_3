require 'sinatra'
require 'sinatra/activerecord'
require 'sinatra/flash'
require 'omniauth-github'
require 'pry'

require_relative 'config/application'

Dir['app/**/*.rb'].each { |file| require_relative file }

# 4.2 Setup the Database
# The rake db:setup task will create the database, load the schema and
# initialize it with the seed data.
#
# 4.3 Resetting the Database
# The rake db:reset task will drop the database and set it up again. This is
# functionally equivalent to rake db:drop db:setup.

helpers do
  def current_user
    user_id = session[:user_id]
    @current_user ||= User.find(user_id) if user_id.present?
  end

  def signed_in?
    current_user.present?
  end
end

def set_current_user(user)
  session[:user_id] = user.id
end

def authenticate!
  unless signed_in?
    flash[:notice] = 'You need to sign in if you want to do that!'
    redirect '/'
  end
end

def successful_meetup
  flash[:notice] = 'You successfully created a meetup!'
end

def form_error
  flash[:notice] = 'Make sure to fill in all the fields!'
  redirect '/create'
end

def successful_join
  flash[:notice] = "You successfully joined a meetup!"
end

# -- CREATED REQUESTS -- #

get '/' do
  @all_meetups = Meetup.all
  erb :index
end

get '/meetup/:id' do
  this_meetup = Meetup.find(params[:id])
  # Extra challenge: view membership of meetup
  session[:meetup_id] = params[:id]

  this_membership = Membership.where(meetup: this_meetup).find_each
  # binding.pry
  erb :show, locals: { this_meetup: this_meetup, this_membership: this_membership }
end

get '/create' do
  if signed_in?
    new_meetup = Meetup.new(params[:meetup])
    erb :new, locals: { new_meetup: new_meetup }
  else
    authenticate!
  end
end

post '/' do
  new_meetup = Meetup.new(params[:meetup])

  if new_meetup.save
    successful_meetup
    redirect "/meetup/#{new_meetup.id}"
  else
    form_error
  end
end

post '/meetup/:id' do
  if signed_in?
    new_membership = Membership.create(user_id: current_user.id, meetup_id: session[:meetup_id])
    successful_join
    redirect "/meetup/#{new_membership.meetup_id}"
  else
    authenticate!
  end
end

# -- END CREATED REQUESTS -- #

get '/auth/github/callback' do
  auth = env['omniauth.auth']

  user = User.find_or_create_from_omniauth(auth)
  set_current_user(user)
  flash[:notice] = "You're now signed in as #{user.username}!"

  redirect '/'
end

get '/sign_out' do
  session[:user_id] = nil
  flash[:notice] = "You have been signed out."

  redirect '/'
end

get '/example_protected_page' do
  authenticate!
end
