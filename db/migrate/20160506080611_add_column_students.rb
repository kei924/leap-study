class AddColumnStudents < ActiveRecord::Migration
  def change
    add_column :students, :name, :string
    add_column :students, :gender, :string
    add_column :students, :job, :string
    add_column :students, :job_detail, :string
  end
end
