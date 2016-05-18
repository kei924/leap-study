class AddTeacherIdToChatrooms < ActiveRecord::Migration
  def change
    add_column :chatrooms, :teacher_id, :integer
  end
end
