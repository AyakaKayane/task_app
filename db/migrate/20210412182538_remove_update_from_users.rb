class RemoveUpdateFromUsers < ActiveRecord::Migration[6.1]
  def change
    remove_column :users, :update, :datetime
  end
end
