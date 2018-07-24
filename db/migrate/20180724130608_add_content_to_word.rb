class AddContentToWord < ActiveRecord::Migration
  def change
    add_column :words, :content, :text
  end
end
