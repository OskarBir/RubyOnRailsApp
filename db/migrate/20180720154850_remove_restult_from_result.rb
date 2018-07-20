class RemoveRestultFromResult < ActiveRecord::Migration
  def change
    remove_column :results, :restult, :integer
  end
end
