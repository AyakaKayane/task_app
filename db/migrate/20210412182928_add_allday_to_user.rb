class AddAlldayToUser < ActiveRecord::Migration[6.1]
  def change
    add_column :users, :allday, :boolean
  end
end
