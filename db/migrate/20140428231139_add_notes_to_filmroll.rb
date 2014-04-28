class AddNotesToFilmroll < ActiveRecord::Migration
  def change
    add_column :filmrolls, :development_notes, :text
    add_column :filmrolls, :shooting_notes, :text
  end
end
