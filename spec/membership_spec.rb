require 'spec_helper'

RSpec.describe Membership do
  let(:membership) { Membership.new(user_id: 1, meetup_id: 1)}

  describe "#initialize" do
    it "should successfully initialize w/ user_id and meetup_id" do
      expect(membership).to be_a Membership
      expect(membership.user_id).to eq(1)
      expect(membership.meetup_id).to eq(1)
    end
  end

  it "should return all groups associated with a user id 1" do
    ## from memberships select meetup_id where user_id == 1

    membership_array = [
      Membership.new(user_id: 1, meetup_id: 1),
       Membership.new(user_id: 1, meetup_id: 2),
       Membership.new(user_id: 1, meetup_id: 3),
       Membership.new(user_id: 2, meetup_id: 1),
       Membership.new(user_id: 2, meetup_id: 5),
       Membership.new(user_id: 3, meetup_id: 1),
       Membership.new(user_id: 3, meetup_id: 3),
       Membership.new(user_id: 3, meetup_id: 5)
    ]
    result = []
    membership_array.each do |item|
      if item.user_id == 1
        result << item.meetup_id
      end
    end

    expect(result.sort).to eq([1, 2, 3])

    ## from memeberhips select user_id where meetup_id == 5

  end

end
