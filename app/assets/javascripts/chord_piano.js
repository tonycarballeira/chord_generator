//$(document).on("ready page:load", setupPiano);

function setupPiano(pianoKeys){
	//console.log('setupPiano', pianoKeys);

	var chord_array = [];

	var kill = {
	     0:"C",
	     1:"C#",
	     2:"D",
	     3:"D#",
	     4:"E",
	     5:"F",
	     6:"F#",
	     7:"G",
	     8:"G#",
	     9:"A",
	     10:"A#",
	     11:"B",
	     12:"C",
	     13:"C#",
	     14:"D",
	     15:"D#",
	     16:"E",
	     17:"F",
	     18:"F#",
	     19:"G",
	     20:"G#",
	     21:"A",
	     22:"A#",
	     23:"B",
	     24:"C",
	     25:"C#"
	};

	pianoKeys.on('played-note.piano', function(evt, key) {
		//console.log("piano note played", evt, key);

		chord_array.push(key)
		if (chord_array.length == 4) {
			console.log(chord_array)
			chord_array = []
		};

		var key = key + 12;
		//console.log(key);
		$("#note" + (chord_array.length)).val(kill[key]);

		$("#note" + (chord_array.length)).val(kill[key]);

		$("#bignote" + (chord_array.length)).html(kill[key]);
    });
};
