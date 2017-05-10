class ChangeSClasses2 < ActiveRecord::Migration
  def change
    remove_column :students, :SClasses, :string
    add_column :students, :SClasses, :string, array: true
  end
end
