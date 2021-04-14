class AddIdnoToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :idno, :string
  end
end
