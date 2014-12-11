class AddUserToProgression < ActiveRecord::Migration
  def change
    add_reference :progressions, :user, index: true
  end
end
