class Indexes < ActiveRecord::Migration
  def change
    add_index :students, :SID, unique: true
    add_index :students, :SEmail, unique: true
    
    add_index :teachers, :TID, unique: true
    add_index :teachers, :TEmail, unique: true
    
    add_index :courses, :CID, unique: true
    add_index :homerooms, :HID, unique: true
    add_index :homerooms, :HNumber, unique: true
  end
end
