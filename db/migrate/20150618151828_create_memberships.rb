class CreateMemberships < ActiveRecord::Migration
  def change
    create_table :memberships do |t|
      t.integer :user_id
      t.integer :meetup_id
    end
  end
end
