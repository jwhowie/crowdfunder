$(function() {

  $('.reward-container').on('click', function() {
    $('.reward-container').append("<%= escape_javascript render(:partial => 'pledges/form') %>");
  });

});
