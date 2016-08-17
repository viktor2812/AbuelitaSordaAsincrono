$(document).ready(function() {
  // Este código corre después de que `document` fue cargado(loaded) 
  // completamente. 
  // Esto garantiza que si amarramos(bind) una función a un elemento 
  // de HTML este exista ya en la página. 
  $("form").submit(function(event){

    event.preventDefault();
    var info = $(this).serialize();
    var url = $(this).attr('action');
    // console.log(url)
    $.post(url, info, function(data){
      //$("#response").empty();
      $("#response").append(data);
    });

  });

 
});