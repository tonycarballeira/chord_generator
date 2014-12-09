class RenameProgressionsIdInOrderedChords < ActiveRecord::Migration
  def change
  	rename_column :ordered_chords, :progessions_id, :progression_id
  end
end
