class AddTPhoto < ActiveRecord::Migration
  def change
    add_column :teachers, :TPhoto, :text
  end
end
