class AddUserTypeToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :user_type, :integer
  end
end
