class RemoveScoreFromResult < ActiveRecord::Migration
  def change
    remove_column :results, :score, :integer
  end
end
