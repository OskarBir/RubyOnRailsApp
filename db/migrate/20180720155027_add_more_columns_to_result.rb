class AddMoreColumnsToResult < ActiveRecord::Migration
  def change
    add_column :results, :score, :integer
  end
end
