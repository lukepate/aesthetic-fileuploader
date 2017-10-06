class AddColumnsToOrderAgain < ActiveRecord::Migration
  def change
    add_column :orders,  :name, :string
    add_column :orders,  :date, :string
    add_column :orders,  :complete, :boolean
    add_reference :orders, :user, foreign_key: true
  end
end
