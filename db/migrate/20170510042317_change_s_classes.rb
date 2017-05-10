class ChangeSClasses < ActiveRecord::Migration
  def change
    remove_column :students, :SClasses, :string
    add_column :students, :SClasses, :string, array: true, default:"{}"
  end
end
