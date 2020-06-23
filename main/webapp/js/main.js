$(document).ready(function () {
   
    var path = location.pathname;

    //mobile menu
    $(".nav_button").click(function(){
        $(".mark").css("display","block");
        $(".nav_wrap").animate({ width: "80vw" }, 250, function(){
            $(".close").css("display","block");
        });
    });
    $(".mark").click(function(){
        $(".mark").css("display","none");
        $(".close").css("display","none");
        $(".nav_wrap").animate({ width: "0px" }, 250);
    });
    $(".close").click(function(){
        $(".mark").css("display","none");
        $(".close").css("display","none");
        $(".nav_wrap").animate({ width: "0px" }, 250);
    });
    
    $(".list>h2").click(function(){
        // console.log($(this).next);
        if($(this).hasClass("active")){
            slideUp();
        }
        else{
            slideUp();
            $(this).addClass("active").next().slideDown(300);
        }
    });
    function slideUp(){
        $(".list>h2").removeClass("active").next().slideUp(300);
    }

    //apply background slide effect
    var numImages = 3;
    var currentImage = 1;

    function changeImage() {
        $('.fade_img' + currentImage).fadeOut(500, function () {
            if (currentImage === numImages) {
                currentImage = 0;
            }
            currentImage++;
            $('.fade_img' + currentImage).fadeIn(500, function () {});
        })
    }
    var fadetimer = setInterval(function () {
        changeImage();
    }, 10000);

   /* 
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
      }, 5000);
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
    btnstart.click(function(){ start() });*/

});

