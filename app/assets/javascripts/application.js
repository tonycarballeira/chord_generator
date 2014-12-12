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

	// $(".progress").on("click", function( e ) {
	// 	e.preventDefault

	// 	$(".sm-audio").each(function(b){
	// 		var target = $(this)
	// 		function playAudio(){
	// 		target.get(0).play(setTimeout(1000));	
	// 		}
	// 		// window.setTimeout(playAudio(), 1000);
	// 		});
	// 	});
});


