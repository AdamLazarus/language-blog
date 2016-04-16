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

      $('#popup').css('left',event.pageX);      // <<< use pageX and pageY
      $('#popup').css('top',event.pageY);
      $('#popup').css('display','inline');
      $("#popup").css("position", "absolute");
        var t = getSelectionText();
        $("#correction").html(t);
      $("#popup").html(t);
      }
    });
  });
