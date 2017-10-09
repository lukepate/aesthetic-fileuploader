class AddShirtNameToFriends < ActiveRecord::Migration
  def change
    add_column :friends,  :shirt_name, :string
  end
end
