class AddTeacherIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :teacher_id, :integer
  end
end
