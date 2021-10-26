  class CreateFriendshipTable < ActiveRecord::Migration[6.1]
    def change
      create_table :friendships do |t|
      t.integer :friender_id
      t.integer :friendee_id
      end
    end
  end

  