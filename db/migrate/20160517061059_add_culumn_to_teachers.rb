class AddCulumnToTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :yomi, :string
    add_column :teachers, :name, :string
    add_column :teachers, :prof_img, :string
    add_column :teachers, :status, :text
    add_column :teachers, :profile, :text
    add_column :teachers, :study_story, :text
    add_column :teachers, :prof_message, :text
    add_column :teachers, :price, :integer
    add_column :teachers, :possible_day_of_week, :string
    add_column :teachers, :frequency, :string
    add_column :teachers, :necessities, :string
  end
end
