class RemoveResultDateFromResult < ActiveRecord::Migration
  def change
    remove_column :results, :result_date, :date
  end
end
