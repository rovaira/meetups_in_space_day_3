require 'spec_helper'

RSpec.describe Meetup do
  let(:meetup) { Meetup.new(name: 'Boston Corgi', description: 'All things corgi', location: 'Launch Mission Control')}

  describe "#initialize" do
    it "should successfully initialize w/ name, description and location" do
      expect(meetup).to be_a Meetup
      expect(meetup.name).to eq('Boston Corgi')
      expect(meetup.description).to eq('All things corgi')
      expect(meetup.location).to eq('Launch Mission Control')
    end
  end

end
