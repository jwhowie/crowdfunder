$(function() {
  var input;
  $('.reward-container').on('click', function(e) {

    $(this).unbind('click');

    var me = $(this);
    $('<lable>').attr('for', 'amount').html('Pledge Amount').appendTo(me);
    input = $('<input>').attr('type', 'number').attr('name', 'rewardAmount').attr('id', me.attr('id')).appendTo(me)
  });

  $('.reward-container').on( 'focusout', 'input', function(){
    input.prop('readonly', true);
    var pledge = {reward_id: $(this).attr('id'), product_id: $('.product-field').attr('id'), amount: input.val()};


    $.ajax({
      url: "/pledges",
      method: 'POST',
      dataType: 'json',
      data: {pledge: pledge}
    });
  });

});
