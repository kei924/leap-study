class AddLastnameToTutor < ActiveRecord::Migration
  def change
    add_column :tutors, :lastname, :string
  end
end
