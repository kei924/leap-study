class AddChatroomIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :chatroom_id, :integer
  end
end
