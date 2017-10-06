class AddShirtColumns < ActiveRecord::Migration
  def change
    add_column :shirts,  :name, :string
    add_column :shirts,  :date, :string
    add_column :shirts,  :complete, :boolean
    add_reference :shirts, :order, foreign_key: true
  end
end
