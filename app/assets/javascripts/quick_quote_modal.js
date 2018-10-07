$('#quick_quote_modal').modal({
  keyboard: false
});

$('#quick_quote_modal').on('hide.bs.modal', function(e){
  e.preventDefault();
});
