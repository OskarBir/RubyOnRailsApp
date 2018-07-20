class AddColumnsToResult < ActiveRecord::Migration
  def change
    add_column :results, :user_id, :integer
    add_column :results, :word_id, :integer
  end
end
