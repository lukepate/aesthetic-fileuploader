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
//= require_tree .
$('#myModal').on('shown.bs.modal', function () {
  $('#myInput').focus()
})


$( ".new-order-button" ).click(function() {
  $(".order-form-container").toggle();
});


$( ".shipping-select" ).change(function() {
  $(".shipping-field ").toggle();
});

$( ".card-button" ).click(function() {
  $(".card ").toggle();
});

$( ".form-submit").click(function() {
  $(".hide-form-mock-up").toggle();
  $(".hide-form-2").toggle();
});

$( ".new-order-form-button" ).click(function() {
  $(".new-order-form").toggle();
  $(".file-container-button").toggle();
  $(".file-container").hide();
});

$( ".file-container-button").click(function() {
  $(".file-container").toggle();
});

$( ".shirt-button").hover(function() {
  $(this).css("cursor", "pointer");
 $(this).css("scale",{
   percent: "90%"
 },500);
});

$('.carosel-control-right').click(function() {
  $(this).blur();
  $(this).parent().find('.carosel-item').first().insertAfter($(this).parent().find('.carosel-item').last());
});
$('.carosel-control-left').click(function() {
  $(this).blur();
  $(this).parent().find('.carosel-item').last().insertBefore($(this).parent().find('.carosel-item').first());
});


//Reorder for /orders
(window).ready(function(){
 $("form-a").submit(function(e){
  $.ajax({
   type: "POST",
   url: path,
   data: { 'title': $('title') }
  })
  .done(function( msg ) {
   alert( "Data Saved: " + msg );
  });
 });

 $("form-b").submit(function(e){
  $.ajax({
   type: "POST",
   url: path,
   data: { 'title': $('title') }
  })
  .done(function( msg ) {
   alert( "Data Saved: " + msg );
  });
 });
});
