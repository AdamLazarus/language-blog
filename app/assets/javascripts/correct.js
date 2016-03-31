

function getSelectionText() {
    var text = "";
    if (window.getSelection) {
        text = window.getSelection().toString();
    } else if (document.selection && document.selection.type != "Control") {
        text = document.selection.createRange().text;
    }
    return text;
}

$('p').mouseup(function() {
      alert("hello!");
        var t = getSelectionText();

        alert(t);
    });
