document.addEventListener("DOMContentLoaded", function(event) { 
  var examples = [
    "two hundred ninety-nine",
    "four hundred thirteen",
    "fifty-one",
    "two hundred thirty-eight",
    "three hundred four",
    "three hundred seventy thousand nine hundred ninety-nine",
    "six hundred thirty-one thousand seven hundred forty",
    "seven hundred nineteen thousand seven hundred twenty-four",
    "thirteen thousand five hundred forty-nine",
    "nine hundred forty-seven million three hundred thirty-four thousand one hundred seventeen",
    "ninety-six million eight hundred ninety thousand five hundred seventy-three",
    "three hundred eighty-two million nine hundred sixty-seven thousand six hundred seventy-four", 
    "seven hundred thirty-nine million fifty-seven thousand five hundred twenty-four",
    "one",
    "ten",
    "one hundred",
    "one thousand",
    "one million",
    "one billion",
    "one trillion",
    "seven",
    "twelve",
    "forty-two",
    "two hundred fifty-six",
    "five hundred",
    "nine hundred ninety-nine",
    "two thousand one",
    "sixty-five thousand five hundred thirty-six",
    "thirteen billion eight hundred twenty million",
  ];
  var input  = document.getElementsByTagName("input")[0];
  var output = document.getElementById("output");
  input.addEventListener('keyup', function(e) {
    text   = e.target.value;
    parsed = parser.parse(text).toString();
    if (parsed > 0) {
      parsed = parsed.split('').reverse().join('').replace(/(.{3})/g,"$1\u2009").split('').reverse().join('');
      output.innerHTML = parsed;
    } else {
      output.innerHTML = '';
    }
  });
  var rand_index = Math.floor(Math.random() * Object.keys(examples).length);
  input.value = examples[rand_index];
  var e = document.createEvent('HTMLEvents');
  e.initEvent('keyup', false, true);
  input.dispatchEvent(e);
  input.focus();
});
