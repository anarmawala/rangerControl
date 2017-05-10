class CreateHomerooms < ActiveRecord::Migration
  def change
    create_table :homerooms do |t|
      t.string :HID
      t.string :TID
      t.string :HNumber

      t.timestamps null: false
    end
  end
end
