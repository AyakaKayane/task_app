class RemovetitleFromuser < ActiveRecord::Migration[6.1]
  def up
    remove_column :users, :title
  end

  def down
    add_column :users, :title, :string
  end
end
