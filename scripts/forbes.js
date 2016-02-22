(function() {
    var forbes = {
      init:function() {
      var submenu = $('div.submenu')
        $('#togglemenu').on('touchstart click',function(e) {
            e.preventDefault();
        var $body = $('body'),
            $page = $('.wrapper'),
            $menu = $('#menu'),
            transitionEnd = 'transitionend webkitTransitionEnd otransitionend MSTransitionEnd';
            $body.addClass('animating');
            $('.promptstrip').hide();

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
        var menulink = $('#menu li a'), 
            dropdown = $('a.dropdown'),
            submenu = $('.submenu'),
            $window = $(window);
            if($window.width() < 767) {
            submenu.addClass('closed');
            $('a.dropdown').on('click',function(e) {
               e.preventDefault();
                if($(this)
                    .parent()
                    .children(submenu)
                    .hasClass('closed')) {
                  $(this)
                    .removeClass('icon-dropdown')
                    .addClass('icon-dropdown-open')
                    .parent()
                    .children(submenu)
                    .removeClass('closed');
                } else {
                  $(this)
                    .removeClass('icon-dropdown-open')
                    .addClass('icon-dropdown')
                    .parent()
                    .children(submenu)
                    .addClass('closed');
                }
           });
        };
      },
      contentToggle:function() {
        var tb = $('.toggle-box') || $('.toggle-box-related'),
            tbSlideDown = $('.toggle-box-slidedown'),
            tbLink = $('.toggle-link*');
        tbSlideDown.slideDown(500);
        tbLink.on('click',function(e) {
          e.preventDefault();
          if($(this).next(tb).is(':hidden')) {
            $(this)
              .removeClass('icon-toggle-dropdown')
              .addClass('icon-toggle-dropdown-open')
              .next(tb)
              .show();
          } else {
            $(this)
              .removeClass('icon-toggle-dropdown-open')
              .addClass('icon-toggle-dropdown')
              .next(tb)
              .hide();
          }
        })
      },
      formMoreDetails:function() {
          var moreDetails = $('div.module-moredetails'),
              noaddress = $('.noaddress');
          noaddress.on('click',function(e) {
              e.preventDefault();
              $(this)
                .closest('.col-12')
                .next(moreDetails)
                .fadeToggle('slow')
                .addClass('backgroundAnimated')
          })
      },
      addressMoreDetails:function() {
          var moreDetailsNeeded = $('input.moreDetailsNeeded');

              moreDetailsNeeded.on('blur',function() {
               $(this)
                .parent()
                .siblings('.module-moredetails')
                .fadeToggle()
              })
      },
      promptStrip:function() {
        var showPrompt = $('.showprompt'),
            promptStrip = $('.promptstrip'),
            closeprompt = $('.closeprompt')
            $('.headermobile').find(showPrompt).on('click',function() {
              $(promptStrip).toggle();
            });
            $('.contentwrapper').find(showPrompt).on('click',function() {
              $(this).parents('.contentwrapper').siblings(promptStrip).toggle();
            });;
            closeprompt.on('click',function() {
              promptStrip.hide();
            });
      },
      callMeBack:function() {
        var callmeBackForm = $('#form1'),
            sales = $('#sales'),
            repairssupport = $('#repairssupport'),
            commercial = $('#commercial')
            callmeBackForm.on('submit',function() {
            if($(sales).is(':checked')) {
              callmeBackForm.attr('action','ack-sales.asp')
            } else if($(repairssupport).is(':checked')) {
              callmeBackForm.attr('action','ack-repairssupport.asp')
            } else if($(commercial).is(':checked')) {
              callmeBackForm.attr('action','ack-commercial.asp')
            }
            });
      },
      productCarousel:function() {
          var thumbs = $('[class*="thumb-"]'),
              mainImage = $('img.main-image'),
              productVideo = $('video'),
              videothumb = $('.thumb-video'),
              thumbLen = thumbs.length,
              thumbHeight = thumbs.outerHeight(true),
              video = document.getElementById('product-video'),
              currentPos = 0
              mainImage.hide();
        
             thumbs.wrapAll("<div class='boxwrap'></div>");
             
             var boxwrap = $('.boxwrap')
        
            boxwrap.wrapInner("<div class='innerwrap'></div>");
        
            boxwrap.css({
                    'max-width' : thumbs.width(),
                    'height' : thumbs.outerHeight(true) * 5
                    });
            $('<a>', {
                'text' : 'Up',
                'class' : 'btn-up',
                'alt' : 'Up'
            })
           .insertBefore(boxwrap)
                      
            $('<a>', {
                'text' : 'Down',
                'class' : 'btn-down',
                'alt' : 'Down'
            })
            .insertAfter(boxwrap)       
      
      var button = $('[class*="btn-"]'),
                       innerWrap = $('.innerwrap')
                       innerWrap.css({
                           'height' : thumbs.outerHeight(true) * thumbLen
                    })
      
      
      button.on('click',function() {
                       if($(this).attr('alt') == "Up") {
                           
                           console.log(++currentPos)
                            if(currentPos >= thumbLen) {
                                  console.log('top limit')
                                  currentPos = thumbLen - 1;
                                  return false
                            } 
                           
                            innerWrap.animate({
                                'margin-top' : "-=" + thumbHeight
                            })

                       } else if($(this).attr('alt') == "Down") {
                                         
                                if(currentPos <= 0) {
                                  console.log('bottom limit')
                                  currentPos = 0;
                                  return false
                            } 
                           console.log(--currentPos) 
                                innerWrap.animate({
                                    'margin-top' : "+=" + thumbHeight
                                })
                       }
                   });
      
      
      
      
        
        
        
          thumbs.on('click',function() {
            var currentThumb = $(this).attr('src');
                productVideo.hide();
                video.pause();
                mainImage.show()
                         .attr('src',currentThumb);
          });
          videothumb.on('click',function() {
              mainImage.hide();
              productVideo.show();
          })
          
          
          
          
          
          
          
                   
      },
      showFeatures:function() {
          var productFeaturesList = $('.product-features-list'),
              allProductFeaturesList = $('.product-features-list-full')
          allProductFeaturesList.hide();
              $('<a>',{
                  'text' : 'show more',
                  'class' : 'show-list'
              })
              .insertAfter(allProductFeaturesList)
              $('.show-list').on('click',function() {
                  if($(this).prev(allProductFeaturesList).is(':hidden')) {
                      $(this)
                        .text('show less')
                        .prev(allProductFeaturesList)
                        .slideDown()
                  } else {
                      $(this)
                         .text('show more')
                         .prev(allProductFeaturesList)
                         .slideUp()                     
                  }
              })
      },
      tabs:function() {
          var tab = $("[class*='tab-']"),
              tabLike = $('.tab-like'),
              tabViewed = $('.tab-viewed'),
              moduleLiked = $('.module-liked'),
              moduleViewed = $('.module-viewed')
              tabLike.addClass('selected')
              moduleViewed.hide();
          tab.on('click',function(e) {
              e.preventDefault();
              
              if($(this).hasClass('tab-like') && moduleLiked.is(':hidden')) {
                  tab.removeClass('selected')
                  $(this)
                  .addClass('selected')
                  moduleLiked
                    .show();
                  moduleViewed.hide();
              } else if($(this).hasClass('tab-viewed') && moduleViewed.is(':hidden')) {
                  tab.removeClass('selected')
                  $(this)
                  .addClass('selected')
                  moduleViewed
                    .show();
                  moduleLiked
                    .hide();
              }
              

          })
      
      }
    }
    forbes.init();
    forbes.mobileMenu();
    forbes.contentToggle();
    forbes.formMoreDetails();
    forbes.addressMoreDetails();
    forbes.promptStrip();
    forbes.callMeBack();
    forbes.productCarousel();
    forbes.showFeatures();
    forbes.tabs();
  })();