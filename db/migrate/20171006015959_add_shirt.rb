class AddShirt < ActiveRecord::Migration
  def change
    create_table :shirts do |t|

      t.timestamps
    end
  end
end
