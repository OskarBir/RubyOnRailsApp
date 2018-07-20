class AddEvenMoreColumnsToResult < ActiveRecord::Migration
  def change
    add_column :results, :result, :integer
  end
end
