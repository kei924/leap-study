class AddCulumnToTutors < ActiveRecord::Migration
  def change
    add_column :tutors, :yomi, :string
  end
end
