class CreateRequests < ActiveRecord::Migration
  def change
    create_table :requests do |t|
      t.integer :student_id
      t.integer :teacher_id
      t.timestamps
    end
  end
end
