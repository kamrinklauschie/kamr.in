import "bootstrap";

var colors = [
  [ "#ec5b55", "#af1f0e"],
  [ "#f08c34", "#c55123"],
  [ "#f9dd6c", "#d8ab3a"],
  [ "#388174", "#73fbe2"],
  [ "#49c5b6", "#255a55"],
  [ "#a9d1d5", "#5a8085"],
  [ "#3983dd", "#a5d3fb"],
  [ "#4a5de6", "#b0bafa"],
  [ "#7a55e7", "#bdaae8"]
];

let color = colors.splice(Math.floor(Math.random() * Math.floor(8)), 1)[0];
document.getElementById("short-quote1").style.color = color[1];
document.getElementById("short-quote1").style.backgroundColor = color[0];

color = colors.splice(Math.floor(Math.random() * Math.floor(7)), 1)[0];
document.getElementById("long-quote").style.color = color[1];
document.getElementById("long-quote").style.backgroundColor = color[0];

color = colors.splice(Math.floor(Math.random() * Math.floor(6)), 1)[0];
document.getElementById("short-quote2").style.color = color[1];
document.getElementById("short-quote2").style.backgroundColor = color[0];

