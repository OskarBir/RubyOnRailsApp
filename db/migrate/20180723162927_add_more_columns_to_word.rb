class AddMoreColumnsToWord < ActiveRecord::Migration
  def change
    add_column :words, :word1pl, :string
    add_column :words, :word1en, :string
    add_column :words, :word2pl, :string
    add_column :words, :word2en, :string
    add_column :words, :word3pl, :string
    add_column :words, :word3en, :string
    add_column :words, :word4pl, :string
    add_column :words, :word4en, :string
    add_column :words, :word5pl, :string
    add_column :words, :word5en, :string
  end
end
