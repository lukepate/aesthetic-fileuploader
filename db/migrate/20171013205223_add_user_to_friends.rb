class AddUserToFriends < ActiveRecord::Migration
  def change
    add_reference :friends, :user, foreign_key: true
  end
end
