class AddReferenceToFriend < ActiveRecord::Migration
  def change
    add_reference :friends, :shirt, foreign_key: true
  end
end
