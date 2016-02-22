(function() {
    var valuesite = {
      init:function() {
      var submenu = $('div.submenu')      
        $('#togglemenu').on('touchstart click',function(e) {
            e.preventDefault();
        var $body = $('body'),
            $page = $('.wrapper'),
            $nav = $('nav'),
            transitionEnd = 'transitionend webkitTransitionEnd otransitionend MSTransitionEnd';
            $body.addClass('animating');
            if($body.hasClass('menu-visible')) {
              $body.addClass('right');
            } else {
              $body.addClass('left');
            }
            $page.on(transitionEnd,function() {
              $body
                  .removeClass('animating left right')
                  .toggleClass('menu-visible');
                $page.off(transitionEnd)
            });
        });
      },
      mobileMenu:function() {
        var mobileToggle = $('.mobile-toggle'),
            submenu = $('[class*="links-"]');
            mobileToggle.addClass('closed')
            
        mobileToggle.on('click',function(){
           if($(this).next(submenu).is(':hidden')) {
              $(this)
                .removeClass('closed')
                .addClass('open')
                .next(submenu)
                .slideDown()
           } else
              $(this)
                .removeClass('open')
                .addClass('closed')
                .next(submenu)
                .slideUp();
        });
      },
lightBox: function() {
          $('<div>', {
            class : 'veil'
          })
          .insertBefore('nav');
          $('<div>', {
            class : 'lightBoxModal'
          })
          .insertBefore('nav');
          $('<h1>',{
              text  : "Weekly TV Request Callback"
          })
          .prependTo('.lightBoxModal');
          $('<span>', {
            class : 'close',
            text  : 'X' 
          })
          .prependTo('div.lightBoxModal');

          $('div.lightBoxModal').css({
              'left'  : '50%',
              'margin-left' : -$('div.lightBoxModal').outerWidth() / 2
          })
          $('div.veil').addClass('hideElement')
          $('a.requestcallback').on('click',function(){
               if($('div.veil').hasClass('hideElement')) {
                  $('div.veil').removeClass('hideElement')
                  $('div.lightBoxModal').animate({
                      'top' : '50%', 
                      'margin-top' : -$('div.lightBoxModal').outerHeight() / 2
                  })
                  $('div.veil').on('click',function() {
                      $(this).addClass('hideElement')
                      $('div.lightBoxModal').animate({
                        'margin-top' : '-1000px'
                      })
                  })
               } else {
                  $('div.veil').addClass('hideElement')
               }
          });
          $('span.close').on('click',function() {
            $(this).parent().animate({
              'margin-top' : '-1000px'
            })
            $('div.veil').addClass('hideElement')
          })
      },
      navBlob: function() {
        $('<span></span>',{
            class : 'blob'
        })
        .appendTo('ul.links-products')
      },
      animateBlob:function() {
        $('ul.links-products li a').on('hover',function() {
          var targetPos = $(this).position().left,
              targetWidth = $(this).width()
              $('.blob').animate({
                  left: targetPos + targetWidth / 1.7
              })
        })
      }







    }
    valuesite.init();
    valuesite.mobileMenu();
    valuesite.lightBox();
    valuesite.navBlob();
    valuesite.animateBlob();
  })();