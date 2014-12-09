json.array!(@ordered_chords) do |ordered_chord|
  json.extract! ordered_chord, :id, :order, :main_chord_id, :progessions_id
  json.url ordered_chord_url(ordered_chord, format: :json)
end
