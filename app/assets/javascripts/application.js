// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// compiled file.
//
// Read Sprockets README (https://github.com/sstephenson/sprockets#sprockets-directives) for details
// about supported directives.
//
//= require jquery
//= require jquery_ujs
//= require turbolinks
//= require_tree .





 // $keys.on('played-note.piano', function(evt, key) {
 //            if (recording) {
 //                data.push({'key': key, 'time': new Date().getTime()});
 //            }
 //        });

$(function() {
    $( document ).tooltip({
    	items: '.suggestion',
    	content: function() {
    		var chord = $(this).data()['chord'];
    		return '<img src="/assets/fingerings/' + chord + '.jpg" alt="' + chord + '">';
    	}
    });
$(".chordbox").each(function(b) {
	$(this).find(".finger").on("click", function( e ) {
		e.preventDefault
		$(this).closest(".chordbox").find(".sm-audio").get(0).play();
		});
	});

	$(document).on('click', ".progress-play", function( e ) {
		console.log("progress clicked");
		e.preventDefault();

		$(".prog").each(function(delay_length){
			console.log('timeout', delay_length);
			setTimeout(play_audio, delay_length * 1000, this);
		});

		function play_audio(audio) {
			console.log("play", audio);
			audio.play();
		}
	});
});


