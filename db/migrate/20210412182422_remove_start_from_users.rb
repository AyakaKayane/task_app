class RemoveStartFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :start, :date
    remove_column :users, :end, :date
  end
end
