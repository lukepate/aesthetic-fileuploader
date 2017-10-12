class AddShirtColumnsSizes < ActiveRecord::Migration
  def change
    add_column :shirts, :style, :string
    add_column :shirts, :color, :string
    add_column :shirts, :xs, :string
    add_column :shirts, :s, :string
    add_column :shirts, :m, :string
    add_column :shirts, :l, :string
    add_column :shirts, :xl, :string
    add_column :shirts, :twoxl, :string
    add_column :shirts, :threexl, :string
    add_column :shirts, :fourxl, :string
    add_column :shirts, :fivexl, :string

    add_column :friends, :ink, :string
    add_column :friends, :print, :string
    add_column :friends, :size, :string
  end
end
