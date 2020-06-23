$(document).ready(function () {
/*$(function () {*/
var prev = $(".slider_prev");
var next = $(".slider_next");
var btnstop = $(".slider_stop");
var btnstart = $(".slider_start");
var firstSlide = $(".slide_01");
var slide_count = "2";
var lastSlide = $(".slide_0"+slide_count);
var SHOWING_CLASS = "showing";
var repeat;
var slide_no = 1;

function rightHandleButton() {
  var currentSlide = $(".showing");
  if (currentSlide) {
    currentSlide.removeClass(SHOWING_CLASS);
    var nextSlide = currentSlide.next();
    if (nextSlide.hasClass("slider_content")) {
      nextSlide.addClass(SHOWING_CLASS);
      slide_no++;
    } else {
      firstSlide.addClass(SHOWING_CLASS);
      slide_no = 1;
    }
  } else {
    slide_no = 1;
    firstSlide.addClass(SHOWING_CLASS);
  }
  $(".slider_no").text(slide_no+"/"+slide_count);
}

function leftHandleButton() {
  var currentSlide = $(".showing");
  if (currentSlide) {
    currentSlide.removeClass(SHOWING_CLASS);
    var preSlide = currentSlide.prev();
    if (preSlide.hasClass("slider_content")) {
      preSlide.addClass(SHOWING_CLASS);
      slide_no--;
    } else {
      lastSlide.addClass(SHOWING_CLASS);
      slide_no = slide_count;
    }
  } else {
    firstSlide.addClass(SHOWING_CLASS);
    slide_no = 1;
  }
  $(".slider_no").text(slide_no+"/"+slide_count);
}

function start() {
  btnstop.css("display","block");
  btnstart.css("display","none");
  repeat = setInterval(function () {
    rightHandleButton()
    return;
  }, 4000);
}

function stop() {
  clearInterval(repeat);
  btnstop.css("display","none");
  btnstart.css("display","block");
}


function mainScreen() {
  firstSlide.addClass(SHOWING_CLASS);
}

function init() {
  mainScreen();
};

init();
start();

next.click(function(){ rightHandleButton() });
prev.click(function(){ leftHandleButton() });
btnstop.click(function(){ stop() });
btnstart.click(function(){ start() });

});