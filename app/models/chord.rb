class Chord
 

	def self.all
		[

	{
		name: "c_major", 
		notes: ["C", "E", "G"],
		following_chords: [:c_augmented, :c_diminished, :d_minor, :d_major, :e_minor, :e_major, :f_minor, :f_major, :g_major, :g_augmented, :g_sharp_major, :a_minor, :a_major]
	},

	 { name: "c_sharp_major", 
		notes: ["C#", "F", "G#"],
		following_chords: [:c_sharp_augmented, :c_sharp_diminished, :d_sharp_minor, :d_sharp_major, :f_minor, :f_major, :f_sharp_minor, :f_sharp_major, :g_sharp_major, :g_sharp_augmented, :a_major, :a_sharp_minor, :a_sharp_major]
	},

	{ name: "d_major", 
		notes: ["D", "F#", "A"],
		following_chords: [:d_augmented, :d_diminished, :e_minor, :e_major, :f_sharp_minor, :f_sharp_major, :g_minor, :g_major, :a_major, :a_augmented, :a_sharp_major, :b_minor, :b_major]
	},
		
	{ name: "d_sharp_major", 
		notes: ["D#", "G", "A#"],
		following_chords: [:d_sharp_augmented, :d_sharp_diminished, :f_minor, :f_major, :g_minor, :g_major, :g_sharp_minor, :g_sharp_major, :a_sharp_major, :a_sharp_augmented, :b_major, :c_minor, :c_major]	
	},


	{ name: "e_major", 
		notes: ["E", "G#", "B"],
		following_chords: [:e_augmented, :e_diminished, :f_sharp_minor, :f_sharp_major, :g_sharp_minor, :g_sharp_major, :a_minor, :a_major, :b_major, :b_augmented, :c_major, :c_sharp_minor, :c_sharp_major]	
	},

	{ name: "f_major", 
		notes: ["F", "A", "C"],
		following_chords: [:f_augmented, :f_diminished, :g_minor, :g_major, :a_minor, :a_major, :a_sharp_minor, :a_sharp_major, :c_major, :c_augmented, :c_sharp_major, :d_minor, :d_major]	
	},

	{ name: "f_sharp_major", 
		notes: ["F#", "A#", "C#"],
		following_chords: [:f_sharp_augmented, :f_sharp_diminished, :g_sharp_minor, :g_sharp_major, :a_sharp_minor, :a_sharp_major, :b_minor, :b_major, :c_sharp_major, :c_sharp_augmented, :d_major, :d_sharp_minor, :d_sharp_major]	
	},		

	{ name: "g_major", 
		notes: ["G", "B", "D"],
	following_chords: [:g_augmented, :g_diminished, :a_minor, :a_major, :b_minor, :b_major, :c_minor, :c_major, :d_major, :d_augmented, :d_sharp_major, :e_minor, :e_major]	
	},	

	{ name: "g_sharp_major", 
		notes: ["G#", "C", "D#"],
		following_chords: [:g_sharp_augmented, :g_sharp_diminished, :a_sharp_minor, :a_sharp_major, :c_minor, :c_major, :c_sharp_minor, :c_sharp_major, :d_sharp_major, :d_sharp_augmented, :e_major, :f_minor, :f_major]	
	},
	{ name: "a_major", 
		notes: ["A", "C#", "E"],
		following_chords: [:a_augmented, :a_diminished, :b_minor, :b_major, :c_sharp_minor, :c_sharp_major, :d_minor, :d_major, :e_major, :e_augmented, :f_major, :f_sharp_minor, :f_sharp_major]		
	},


	{ name: "a_sharp_major", 
		notes: ["A#", "D", "F"],
		following_chords: [:a_sharp_augmented, :a_sharp_diminished, :c_minor, :c_major, :d_minor, :d_major, :d_sharp_minor, :d_sharp_major, :f_major, :f_augmented, :f_sharp_major, :g_minor, :g_major]	
		},

	{ name: "b_major", 
		notes: ["B", "D#", "F#"],
	following_chords: [:b_augmented, :b_diminished, :c_sharp_minor, :c_sharp_major, :d_sharp_minor, :d_sharp_major, :e_minor, :e_major, :f_sharp_major, :f_sharp_augmented, :g_major, :g_sharp_minor, :g_sharp_major]		
	},


# MINORCHORDS = {

	{ name: "c_minor", 
		notes: ["C", "D#", "G"],
		following_chords: [:c_diminished, :c_major, :d_minor, :d_diminished, :d_sharp_major, :f_minor, :f_diminished, :g_minor, :g_major, :g_sharp_major, :a_sharp_major, :b_diminished]
	},

	{ name: "c_sharp_minor", 
		notes: ["C#", "E", "G#"],
		following_chords: [:c_sharp_diminished, :c_sharp_major, :d_sharp_minor, :d_sharp_diminished, :e_major, :f_sharp_minor, :f_sharp_diminished, :g_sharp_minor, :g_sharp_major, :a_major, :b_major, :c_diminished]
	},

	{ name: "d_minor", 
		notes: ["D", "F", "A"],
				following_chords: [:d_diminished, :d_major, :e_minor, :e_diminished, :f_major, :g_minor, :g_diminished, :a_minor, :a_major, :a_sharp_major, :c_major, :c_sharp_diminished]
	},
		
	{ name: "d_sharp_minor", 
		notes: ["D#", "F#", "A#"],
		following_chords: [:d_sharp_diminished, :d_sharp_major, :f_minor, :f_diminished, :f_sharp_major, :g_sharp_minor, :g_sharp_diminished, :a_sharp_minor, :a_sharp_major, :b_major, :c_sharp_major, :d_diminished]	
	},


	{ name: "e_minor", 
		notes: ["E", "G", "B"],
		following_chords: [:e_diminished, :e_major, :f_sharp_minor, :f_sharp_diminished, :g_major, :a_minor, :a_diminished, :b_minor, :b_major, :c_major, :d_major, :d_sharp_diminished]	
	},

	{ name: "f_minor", 
		notes: ["F", "G#", "C"],
		following_chords: [:f_diminished, :f_major, :g_minor, :g_diminished, :g_sharp_major, :a_sharp_minor, :a_sharp_diminished, :c_minor, :c_major, :c_sharp_major, :d_sharp_major, :e_diminished]
	},

	{ name: "f_sharp_minor", 
		notes: ["F#", "A", "C#"],
	following_chords: [:f_sharp_diminished, :f_sharp_major, :g_sharp_minor, :g_sharp_diminished, :a_major, :b_minor, :b_diminished, :c_sharp_minor, :c_sharp_major, :d_major, :e_major, :f_diminished]	
	},		

	{ name: "g_minor", 
		notes: ["G", "A#", "D"],
		following_chords: [:g_diminished, :g_major, :a_minor, :a_diminished, :a_sharp_major, :c_minor, :c_diminished, :d_minor, :d_major, :d_sharp_major, :f_major, :f_sharp_diminished]
	},	

	{ name: "g_sharp_minor", 
		notes: ["G#", "B", "D#"],
		following_chords: [:g_sharp_diminished, :g_sharp_major, :a_sharp_minor, :a_sharp_diminished, :b_major, :c_sharp_minor, :c_sharp_diminished, :d_sharp_minor, :d_sharp_major, :e_major, :f_sharp_major, :g_diminished]	
	},

	{ name: "a_minor", 
		notes: ["A", "C", "E"],
	following_chords: [:a_diminished, :a_major, :b_minor, :b_diminished, :c_major, :d_minor, :d_diminished, :e_minor, :e_major, :f_major, :g_major, :g_sharp_diminished]
	},


	{ name: "a_sharp_minor", 
		notes: ["A#", "C#", "F"],
		following_chords: [:a_sharp_diminished, :a_sharp_major, :c_minor, :c_diminished, :c_sharp_major, :d_sharp_minor, :d_sharp_diminished, :e_sharp_minor, :e_sharp_major, :f_sharp_major, :g_sharp_major, :a_diminished]	
			},

	{ name: "b_minor", 
		notes: ["B", "D", "F#"],
		following_chords: [:b_diminished, :b_major, :c_sharp_minor, :c_sharp_diminished, :d_major, :e_minor, :e_diminished, :f_sharp_minor, :f_sharp_major, :g_major, :a_major, :a_sharp_diminished]
		},




# AUGMENTEDCHORDS = {

	{ name: "c_augmented",
		notes: ["C", "E", "G#"],
		following_chords: [:c_major, :a_minor]
	},

	{ name: "c_sharp_augmented",
		notes: ["C#", "F", "A"],
		following_chords: [:c_sharp_major, :a_sharp_minor]
	},

	{ name: "d_augmented",
		notes: ["D", "F#", "A#"],
		following_chords: [:d_major, :b_minor]
	},
		
	{ name: "d_sharp_augmented",
		notes: ["D#", "G", "B"],
		following_chords: [:d_sharp_major, :c_minor]
	},


	{ name: "e_augmented",
		notes: ["E", "G#", "C"],
		following_chords: [:e_major, :c_sharp_minor]
	},

	{ name: "f_augmented",
		notes: ["F", "A", "C#"],
		following_chords: [:f_major, :d_minor]
	},

	{ name: "f_sharp_augmented",
		notes: ["F#", "A#", "D"],
		following_chords: [:f_sharp_major, :d_sharp_minor]
	},		

	{ name: "g_augmented",
		notes: ["G", "B", "D#"],
		following_chords: [:g_major, :e_minor]
	},	

	{ name: "g_sharp_augmented",
		notes: ["G#", "C", "E"],
		following_chords: [:g_sharp_major, :f_minor]
	},


	{ name: "a_augmented",
		notes: ["A", "C#", "F"],
	following_chords: [:a_major, :f_sharp_minor]
	},


	{ name: "a_sharp_augmented",
		notes: ["A#", "D", "F#"],
		following_chords: [:a_sharp_major, :g_minor]
	},

	{ name: "b_augmented",
		notes: ["B", "D#", "G"],
	following_chords: [:b_major, :g_sharp_minor]
	},




# DIMINISHEDCHORDS = {

	{ name: "c_diminished",
		notes: ["C", "D#", "F#"],
		following_chords: [:c_major, :c_minor]
	},

	{ name: "c_sharp_diminished",
		notes: ["C#", "E", "G"],
		following_chords: [:c_sharp_major, :c_sharp_minor]
	},

	{ name: "d_diminished",
		notes: ["D", "F", "G#"],
		following_chords: [:d_major, :d_minor]
	},
		
	{ name: "d_sharp_diminished",
		notes: ["D#", "F#", "A"],
		following_chords: [:d_sharp_major, :d_sharp_minor]
	},

	{ name: "e_diminished",
		notes: ["E", "G", "A#"],
		following_chords: [:e_major, :e_minor]
	},

	{ name: "f_diminished",
		notes: ["F", "G#", "B"],
		following_chords: [:f_major, :f_minor]
	},

	{ name: "f_sharp_diminished",
		notes: ["F#", "A", "C"],
		following_chords: [:f_sharp_major, :f_sharp_minor]
	},		

	{ name: "g_diminished",
		notes: ["G", "A#", "C#"],
		following_chords: [:g_major, :g_minor]
	},	

	{ name: "g_sharp_diminished",
		notes: ["G#", "B", "D"],
		following_chords: [:g_sharp_major, :g_sharp_minor]
	},


	{ name: "a_diminished",
		notes: ["A", "C", "D#"],
		following_chords: [:a_major, :a_minor]
	},


	{ name: "a_sharp_diminished",
		notes: ["A#", "C#", "E"],
		following_chords: [:a_sharp_major, :a_sharp_minor]
	},

	{ name: "b_diminished",
		notes: ["B", "D", "F"],
		following_chords: [:b_major, :b_minor]
	},




# MAJORCHORDS = {

	{ name: "c_major", 
		notes: ["C", "E", "G"],
		following_chords: [:c_augmented, :c_diminished, :d_minor, :d_major, :e_minor, :e_major, :f_minor, :f_major, :g_major, :g_augmented, :g_sharp_major, :a_minor, :a_major]
	},

	{ name: "c_sharp_major", 
		notes: ["C#", "F", "G#"],
		following_chords: [:c_sharp_augmented, :c_sharp_diminished, :d_sharp_minor, :d_sharp_major, :f_minor, :f_major, :f_sharp_minor, :f_sharp_major, :g_sharp_major, :g_sharp_augmented, :a_major, :a_sharp_minor, :a_sharp_major]
	},

	{ name: "d_major", 
		notes: ["D", "F#", "A"],
		following_chords: [:d_augmented, :d_diminished, :e_minor, :e_major, :f_sharp_minor, :f_sharp_major, :g_minor, :g_major, :a_major, :a_augmented, :a_sharp_major, :b_minor, :b_major]
	},
		
	{ name: "d_sharp_major", 
		notes: ["D#", "G", "A#"],
		following_chords: [:d_sharp_augmented, :d_sharp_diminished, :f_minor, :f_major, :g_minor, :g_major, :g_sharp_minor, :g_sharp_major, :a_sharp_major, :a_sharp_augmented, :b_major, :c_minor, :c_major]	
	},


	{ name: "e_major", 
		notes: ["E", "G#", "B"],
		following_chords: [:e_augmented, :e_diminished, :f_sharp_minor, :f_sharp_major, :g_sharp_minor, :g_sharp_major, :a_minor, :a_major, :b_major, :b_augmented, :c_major, :c_sharp_minor, :c_sharp_major]	
	},

	{ name: "f_major", 
		notes: ["F", "A", "C"],
		following_chords: [:f_augmented, :f_diminished, :g_minor, :g_major, :a_minor, :a_major, :a_sharp_minor, :a_sharp_major, :c_major, :c_augmented, :c_sharp_major, :d_minor, :d_major]	
	},

	{ name: "f_sharp_major", 
		notes: ["F#", "A#", "C#"],
		following_chords: [:f_sharp_augmented, :f_sharp_diminished, :g_sharp_minor, :g_sharp_major, :a_sharp_minor, :a_sharp_major, :b_minor, :b_major, :c_sharp_major, :c_sharp_augmented, :d_major, :d_sharp_minor, :d_sharp_major]	
	},		

	{ name: "g_major", 
		notes: ["G", "B", "D"],
	following_chords: [:g_augmented, :g_diminished, :a_minor, :a_major, :b_minor, :b_major, :c_minor, :c_major, :d_major, :d_augmented, :d_sharp_major, :e_minor, :e_major]	
	},	

	{ name: "g_sharp_major", 
		notes: ["G#", "C", "D#"],
		following_chords: [:g_sharp_augmented, :g_sharp_diminished, :a_sharp_minor, :a_sharp_major, :c_minor, :c_major, :c_sharp_minor, :c_sharp_major, :d_sharp_major, :d_sharp_augmented, :e_major, :f_minor, :f_major]	
	},
	{ name: "a_major", 
		notes: ["A", "C#", "E"],
		following_chords: [:a_augmented, :a_diminished, :b_minor, :b_major, :c_sharp_minor, :c_sharp_major, :d_minor, :d_major, :e_major, :e_augmented, :f_major, :f_sharp_minor, :f_sharp_major]		
	},


	{ name: "a_sharp_major", 
		notes: ["A#", "D", "F"],
		following_chords: [:a_sharp_augmented, :a_sharp_diminished, :c_minor, :c_major, :d_minor, :d_major, :d_sharp_minor, :d_sharp_major, :f_major, :f_augmented, :f_sharp_major, :g_minor, :g_major]	
		},

	{ name: "b_major", 
		notes: ["B", "D#", "F#"],
	following_chords: [:b_augmented, :b_diminished, :c_sharp_minor, :c_sharp_major, :d_sharp_minor, :d_sharp_major, :e_minor, :e_major, :f_sharp_major, :f_sharp_augmented, :g_major, :g_sharp_minor, :g_sharp_major]		
	}

]
	end


end
