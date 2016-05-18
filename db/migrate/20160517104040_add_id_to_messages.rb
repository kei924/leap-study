class AddIdToMessages < ActiveRecord::Migration
  def change
    add_column :messages, :student_id, :integer
  end
end