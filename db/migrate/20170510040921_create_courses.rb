class CreateCourses < ActiveRecord::Migration
  def change
    create_table :courses do |t|
      t.string :CID
      t.string :TID
      t.string :CType
      t.string :CName
      
      t.timestamps null: false
    end
  end
end
