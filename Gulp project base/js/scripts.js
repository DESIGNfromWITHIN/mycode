// Animated header
var lFollowX = 0,
    lFollowY = 0,
    x = 0,
    y = 0,
    friction = 1 / 30;
function moveBackground() {
  x += (lFollowX - x) * friction;
  y += (lFollowY - y) * friction;
  translate = 'translate(' + x + 'px, ' + y + 'px) scale(1.1)';
  $('.bg').css({
    '-webit-transform': translate,
    '-moz-transform': translate,
    'transform': translate
  });
  window.requestAnimationFrame(moveBackground);
}

$(window).on('mousemove click', function(e) {
  var lMouseX = Math.max(-100, Math.min(100, $(window).width() / 2 - e.clientX));
  var lMouseY = Math.max(-100, Math.min(100, $(window).height() / 2 - e.clientY));
  lFollowX = (20 * lMouseX) / 100; // 100 : 12 = lMouxeX : lFollow
  lFollowY = (10 * lMouseY) / 100;
});
moveBackground();

// js =========================================================
$('html').removeClass('no-js');
$('html').addClass('js');

// loaded 
window.onload = function(){
  $("body").addClass("loaded");
}, 250;

// lazy load ==================================================
jQuery(document).ready(function() {
  var lazyLoadInstance = new LazyLoad({
      elements_selector: ".lazy"
  });
});

// full page ==================================================
$(document).ready(function() {
	$('#fullpage').fullpage({
    //options here
    licenseKey: '0837760C-CA694BB4-A6400237-612CB285',
    easing: 'easeInOutCubic',
    scrollingSpeed: '900',
    dragAndMove: true,
    responsiveWidth: 1225,
    onLeave: function(index, nextIndex, direction){
      $('.section.active').next('.section').addClass('animate-pane');
    }
	});
});

$('.fullpagePrevious').click(function(){
    $.fn.fullpage.moveSectionUp();
});

$('.fullpageNext').click(function(){
    $.fn.fullpage.moveSectionDown();
});

// animate on scroll ==========================================
(function ($) {
  'use strict';
  $.fn.inviewport = function (options) {
    var settings = $.extend({
      'minPercentageInView' : 100,
      'standardClassName': 'in-view'
    }, options);
    this.each(function () {
      var $this = $(this),
        $win = $(window),
        changed = false,
        isVisible = function () {
          var c = settings.className || settings.standardClassName,
            min = (settings.threshold || settings.minPercentageInView) / 100,
            xMin = $this.width() * min,
            yMin = $this.height() * min,
            winPosX = $win.scrollLeft() + $win.width(),
            winPosY = $win.scrollTop() + $win.height(),
            elPosX = $this.offset().left + xMin,
            elPosY = $this.offset().top + yMin;
          if (winPosX > elPosX && winPosY > elPosY) {
            $this.addClass(c);
          }
        };
      $win.on('ready', isVisible())
        .on('resize scroll', function () {
          changed = true;
        })
      setInterval(function () {
        if (changed) {
          changed = false;
          isVisible();
        }
      }, 250);
    });
  };
}(jQuery));

$(function () {
  $('.animate').inviewport({
    threshold: 0.1,
    className: 'on-screen'
  })
});

// smooth scroll anchor =======================================
$('a[href*="#"]:not([href="#"])').click(function() {
  var offset = -175;
  if (location.pathname.replace(/^\//,'') == this.pathname.replace(/^\//,'') && location.hostname == this.hostname) {
      var target = $(this.hash);
      target = target.length ? target : $('[name=' + this.hash.slice(1) +']');
      if (target.length) {
          $('html, body').animate({
              scrollTop: target.offset().top + offset
          }, 1000);
          return false;
      }
  }
});

// $('#container').imagesLoaded( function() {
// });
$(document).ready(function(){

  $('.bxslider').bxSlider({
    pager: false
  });

  $(".cta_open").click(function(){
    $("#hire_effect_layer").removeClass("active");
    $("#contact_effect_layer").addClass("active");
  });
  $(".hire_open").click(function(){
    $("#contact_effect_layer").removeClass("active");
    $("#hire_effect_layer").addClass("active");
  });
  $(".cta_form_close").click(function(){
    $("#contact_effect_layer").removeClass("active");
  });
  $(".hire_form_close").click(function(){
    $("#hire_effect_layer").removeClass("active");
  });

  $('#preloader_bg')
  .velocity({ opacity : 0 }, { duration: 1000, delay: 500 });

  $('#preloader')
  .velocity({ top : "-100vh" }, { duration: 0, delay: 1500 });

  $('#logo')
  .velocity({ opacity: 1, top: 2 }, { duration: 1000, delay: 500 })
  $('#tick')
  .velocity({ opacity: 1 }, { duration: 1000, delay: 1000 })
  .velocity({ top: -0, left: -15 }, { queue: false, duration: 2000, easing: "ease-in-out" })
  $('#stage_name_1')
  .velocity({ opacity: 1, marginLeft: 0 }, { duration: 1500, delay: 1000 })
  $('#stage_name_2')
  .velocity({ opacity: 1, marginLeft: 0 }, { duration: 1500, delay: 1500 })
  $('#stage_name_3')
  .velocity({ opacity: 1, marginLeft: 0 }, { duration: 1500, delay: 2000 })

  $('.stage_content_h1')
  .velocity({ top : 245 }, { duration: 1500, delay: 2500, easing: "ease-in-out" });
  $('.stage_content_1')
  .velocity({ opacity : 1 }, { duration: 1500, delay: 2500, easing: "ease-in-out" });
  $('.stage_content_2')
  .velocity({ opacity : 1 }, { duration: 1500, delay: 3000, easing: "ease-in-out" });
  $('.stage_content_3')
  .velocity({ opacity : 1 }, { duration: 1500, delay: 3500, easing: "ease-in-out" });

  $('.cta_content_1')
  .velocity({ opacity : 1 }, { duration: 2000, delay: 3500, easing: "ease-in-out" });
  $('.cta_content_2')
  .velocity({ opacity : 1 }, { duration: 2000, delay: 4000, easing: "ease-in-out" });

  var $line = $("#line");
  $line.velocity({ width: "90%" }, { duration: 5000, delay: 500, loop: true, easing: "ease-in-out" });

  var $cta = $(".cta");
  $cta.mouseenter(function () {
    $(this).find(".cta_before").velocity({ width: "100%" },{ duration: 750 });
  }).mouseleave(function () {
    $(this).find(".cta_before").velocity({ width: "56px" },{ duration: 500 });
  });

});