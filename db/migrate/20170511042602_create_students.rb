class CreateStudents < ActiveRecord::Migration
  def change
    drop_table :students
    create_table :students do |t|
      t.string :SName
      #t.binary  :StuPhoto
      t.string  :SID
      
      t.string  :SAddress
      t.string  :SPhone
      t.string  :SEmail
      
      t.string  :SAbsences
      t.string  :SAttendance
      t.string :STardies
      t.string :SDetentions
      
      t.string  :SUGPA
      t.string  :SWGPA
      t.string  :SSLHs
      t.string  :SCredits
      t.boolean :SOT
      
      t.string  :SClasses, array: true, default:[]
      t.integer :HID
      t.integer :SGrade
      t.string :SDebt

      t.timestamps null: false
    end
  end
end
