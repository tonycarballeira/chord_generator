class Progression < ActiveRecord::Base
	has_many :ordered_chords
	accepts_nested_attributes_for :ordered_chords

	validates :name, presence: true
	validates_associated :ordered_chords

	belongs_to :user
end
