class RemoveMoreColumnsFromWord < ActiveRecord::Migration
  def change
    remove_column :words, :word1pl, :string
    remove_column :words, :word1en, :string
    remove_column :words, :word2pl, :string
    remove_column :words, :word2en, :string
    remove_column :words, :word3pl, :string
    remove_column :words, :word3en, :string
    remove_column :words, :word4pl, :string
    remove_column :words, :word4en, :string
    remove_column :words, :word5pl, :string
    remove_column :words, :word5en, :string
  end
end
