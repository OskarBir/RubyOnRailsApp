class AddColumnsToWords < ActiveRecord::Migration
  def change
    add_column :words, :subcategory_id, :integer
  end
end
