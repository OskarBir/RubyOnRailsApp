class RemoveCreateDateFromWord < ActiveRecord::Migration
  def change
    remove_column :words, :create_date, :date
  end
end
