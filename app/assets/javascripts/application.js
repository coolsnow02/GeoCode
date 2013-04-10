// This is a manifest file that'll be compiled into application.js, which will include all the files
// listed below.
//
// Any JavaScript/Coffee file within this directory, lib/assets/javascripts, vendor/assets/javascripts,
// or vendor/assets/javascripts of plugins, if any, can be referenced here using a relative path.
//
// It's not advisable to add code directly here, but if you do, it'll appear at the bottom of the
// the compiled file.
//
// WARNING: THE FIRST BLANK LINE MARKS THE END OF WHAT'S TO BE PROCESSED, ANY BLANK LINE SHOULD
// GO AFTER THE REQUIRES BELOW.
//
//= require jquery
//= require jquery_ujs
//= require twitter/bootstrap
//= require_tree .

$(document).ready(function(){

    $(".loc_search").each(function(i,v){
        auto_c = new google.maps.places.Autocomplete(v);
    });
//    var defaultBounds = new google.maps.LatLngBounds(new google.maps.LatLng(42.71422,-4.222666), new google.maps.LatLng(51.179343,8.47412));
//    var autocomplete = new google.maps.places.Autocomplete(input);

//    autocomplete.setBounds(defaultBounds);
//    autocomplete1.setBounds(defaultBounds);
//
//    autocomplete.setTypes(['geocode']);
//    autocomplete1.setTypes(['geocode']);
});