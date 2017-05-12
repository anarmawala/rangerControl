class Asdf < ActiveRecord::Migration
  def change
    add_column :students, :SPhotoS, :text
  end
end
