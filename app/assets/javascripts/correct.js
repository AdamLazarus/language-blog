function getSelectionText() {
    var text = "";
    if (window.getSelection) {
        text = window.getSelection().toString();
    } else if (document.selection && document.selection.type != "Control") {
        text = document.selection.createRange().text;
    }
    return text;
}

$(document).ready(function(){
  $('p#content').bind('mouseup', function(event) {
    if(getSelectionText() != ''){
        var t = getSelectionText();
        $("#selected_text").val(t);

      $("#popup").html(t);
      }
    });
  });
