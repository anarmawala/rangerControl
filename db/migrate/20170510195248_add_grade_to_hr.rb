class AddGradeToHr < ActiveRecord::Migration
  def change
    add_column :homerooms, :HGrade, :integer
  end
end
