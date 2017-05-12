class Chang < ActiveRecord::Migration
  def change
    change_table :students do |t|
      t.change :HID, :string
    end
  end
end
