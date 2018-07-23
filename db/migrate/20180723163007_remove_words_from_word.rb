class RemoveWordsFromWord < ActiveRecord::Migration
  def change
    remove_column :words, :words, :text
  end
end
