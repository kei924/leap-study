class CreateTutors < ActiveRecord::Migration
  def change
    create_table :tutors do |t|
      t.string :firstname
      t.string :firstname
      t.string :prof_img
      t.string :status
      t.text :profile
      t.text :study_story
      t.text :message
      t.integer :price
      t.string :possible_day_of_week
      t.string :frequency
      t.string :necessities
      t.timestamps
    end
  end
end
