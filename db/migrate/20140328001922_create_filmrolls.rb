class CreateFilmrolls < ActiveRecord::Migration
  def change
    create_table :filmrolls do |t|
      t.string :name
      t.text :notes

      t.timestamps
    end
  end
end
