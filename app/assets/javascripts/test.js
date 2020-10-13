/*global $*/
$(function() {
  
 $('#hoge').click(function(){
   $("#hoge").css("color", "green").css("font-size","60px");
   });
 
//----slide----

 function toggleChangeBtn(){
  var slideIndex = $('.slide').index($('.active'));
    $('.change-btn').show();
    if (slideIndex == 0) {
      $('.prev-btn').hide();
    } else if (slideIndex == $('.slide').length-1) {
      $('.next-btn').hide();
    }
  }
  
  $('.index-btn').click(function() {
    $('.active').removeClass('active');
    $('.checked').removeClass('checked');
    var clickedIndex = $('.index-btn').index($(this));
    $('.slide').eq(clickedIndex).addClass('active');
    $('.index-btn').eq(clickedIndex).addClass('checked');
    toggleChangeBtn();
  });
  
  $('.change-btn').click(function() {
    var $displaySlide = $('.active');
    var $chekedBtn = $('.checked');
    $displaySlide.removeClass('active');
    $chekedBtn.removeClass('checked');
    if ($(this).hasClass('next-btn')) {
      $displaySlide.next().addClass('active');
      $chekedBtn.next().addClass('checked');
    } else {
      $displaySlide.prev().addClass('active');
      $chekedBtn.prev().addClass('checked');
    }
    toggleChangeBtn();
  });
}); 
 