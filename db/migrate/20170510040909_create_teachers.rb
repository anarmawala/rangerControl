class CreateTeachers < ActiveRecord::Migration
  def change
    create_table :teachers do |t|
      t.string  :TID
      t.string  :TEmail
      t.boolean :TAdmin
      t.string  :TName

      t.timestamps null: false
    end
  end
end
