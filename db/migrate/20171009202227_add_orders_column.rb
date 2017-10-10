class AddOrdersColumn < ActiveRecord::Migration
  def change
    add_column :orders,  :contact_name, :string
    add_column :orders,  :address, :string
    add_column :orders,  :state, :string
    add_column :orders,  :zip_code, :string
    add_column :orders,  :shipping, :string
  end
end
