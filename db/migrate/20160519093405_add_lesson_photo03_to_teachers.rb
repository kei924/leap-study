class AddLessonPhoto03ToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :lesson_p03, :string
  end
end
