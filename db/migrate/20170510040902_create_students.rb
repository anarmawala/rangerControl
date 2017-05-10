class CreateStudents < ActiveRecord::Migration
  def change
    create_table :students do |t|
      t.string  :SName
      #t.binary  :StuPhoto
      t.string  :SID
      
      t.string  :SAddress
      t.string  :SPhone
      t.string  :SEmail
      
      t.decimal :SAbsences
      t.decimal :SAttendance
      t.decimal :STardies
      t.integer :SDetentions
      
      t.decimal :SUGPA
      t.decimal :SWGPA
      t.decimal :SSLHs
      t.integer :SCredits
      t.boolean :SOT
      
      t.string  :SClasses, array: true, default:'{}'
      t.integer :HID
      t.integer :SGrade
      t.decimal :SDebt
      
      t.timestamps null: false
    end
  end
end
