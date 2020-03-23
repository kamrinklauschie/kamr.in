import "bootstrap";

var colors = [

  // Red
  [ "#ec5b55", "#af1f0e"],
  // Orange
  [ "#f08c34", "#c55123"],
  // Yellow
  [ "#f9dd6c", "#d8ab3a"],
  // Dark Green
  [ "#388174", "#73fbe2"],
  // Teal
  [ "#49c5b6", "#255a55"],
  // Seafoam
  [ "#a9d1d5", "#5a8085"],
  // Blue
  [ "#3983dd", "#a5d3fb"],
  // Dark Blue
  [ "#4a5de6", "#b0bafa"],
  // Purple
  [ "#7a55e7", "#bdaae8"]
];

function getRandom(min, max) {
  min = Math.ceil(min);
  max = Math.floor(max);
  return Math.floor(Math.random() * (max - min)) + min;
}

var rand = getRandom(0, 8)

background_color = colors[rand][0]
font_color = colors[rand][1]

document.body.style.backgroundColor = background_color
document.body.style.color = font_color
document.getElementById("button1").style.color = font_color
document.getElementById("button2").style.color = font_color

