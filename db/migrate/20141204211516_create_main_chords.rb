class CreateMainChords < ActiveRecord::Migration
  def change
    create_table :main_chords do |t|
      t.string :name

      t.timestamps
    end
  end
end
