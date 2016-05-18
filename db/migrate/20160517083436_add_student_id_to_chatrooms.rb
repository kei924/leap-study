class AddStudentIdToChatrooms < ActiveRecord::Migration
  def change
    add_column :chatrooms, :student_id, :integer
  end
end
