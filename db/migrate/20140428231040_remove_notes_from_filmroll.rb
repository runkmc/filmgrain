class RemoveNotesFromFilmroll < ActiveRecord::Migration
  def change
    remove_column :filmrolls, :notes, :text
  end
end
