document.addEventListener("DOMContentLoaded", function(event) { 
  var input  = document.getElementsByTagName("input")[0];
  var output = document.getElementById("output");
  input.addEventListener('keyup', function(e) {
    text   = e.target.value;
    parsed = parser.parse(text);
    output.innerHTML = parsed;
  });
});
