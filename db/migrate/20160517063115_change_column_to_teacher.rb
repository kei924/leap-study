class ChangeColumnToTeacher < ActiveRecord::Migration
  def up
    change_column :teachers, :price, :string, null: true, default: 0
  end

  # 変更前の状態
  def down
    change_column :teachers, :price, :integer, null: true, default: 0
  end
end
