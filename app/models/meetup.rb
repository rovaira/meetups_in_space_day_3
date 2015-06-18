class Meetup < ActiveRecord::Base
  has_many :memberships
  has_many :users, through: :memberships

  validates :name, presence: true, uniqueness: true, length: { maximum: 95 }
  validates :description, presence: true, length: { maximum: 255 }
  validates :location, presence: true, format: { with: /*,../ }

end
