var date = new Date;
var sec = date.getSeconds();

var http = null;
if (window.XMLHttpRequest) {
  http = new XMLHttpRequest();
} else if (window.ActiveXObject) {
  http = new ActiveXObject("Microsoft.XMLHTTP");
}
if (http != null) {
  if (sec == 0){ 
    http.open("GET", "/ressources" , true);
    http.onreadystatechange = ausgeben;
    http.send(null);
  }
}

function ausgeben() {
  if (http.readyState == 4) {
     document.getElementById("Ausgabe").innerHTML =
        http.responseText;
  }
}