class CreateOrderedChords < ActiveRecord::Migration
  def change
    create_table :ordered_chords do |t|
      t.integer :order
      t.references :main_chord, index: true
      t.references :progessions, index: true

      t.timestamps
    end
  end
end
