<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="includes/config.asp" -->

   
    <!--#include file="includes/header.inc.asp" -->

    
    
  <div class="contentwrapper">
    <div class="row clearfix">
       <div class="module-product-video clearfix">
         <div class="col-8 col-expanded"> 
          <hgroup>
            <h1>Bosch Cordless Floor Cleaner</h1>
            <h2>BCH625KT</h2>
          </hgroup>

           <div class="video-wrapper">
               <video src="images/video/File_9294_H264-Web.mp4" controls poster="images/video/preview/File_9296_JPEG-Web.jpg">
               </video>
           </div>
               <a class="transcript">Show transcript</a>
               <div class="transcript-wrapper">
                   <p>
                   Lorem ipsum dolor sit amet, consectetur adipiscing elit. In id lacus leo. Maecenas pulvinar, augue vitae rutrum volutpat, lorem dolor sagittis tellus, sed semper nunc nisi eget lorem. In ullamcorper mollis orci id dictum. Sed rutrum sagittis ultrices. Donec dictum volutpat lectus, sit amet efficitur dolor dignissim in. Duis eleifend sapien non lacus vestibulum bibendum. In scelerisque risus sit amet mattis condimentum. Curabitur convallis tortor non ipsum posuere, quis luctus nulla ultricies. Vivamus ut bibendum augue. Pellentesque lobortis volutpat accumsan. Donec vel vulputate orci, quis convallis nibh. In pellentesque turpis sed sem feugiat sodales.
                   </p>
                   </p>
                   <p>
                    Praesent a pharetra lorem. In fermentum ligula luctus fermentum vestibulum. In sapien turpis, eleifend id nulla in, mattis ullamcorper orci. Curabitur ut libero in justo malesuada consequat. In sit amet euismod sem. Duis bibendum eget sapien vel scelerisque. Nunc non erat a mi placerat aliquet. Proin at vulputate nisi. Mauris consequat, odio sed viverra tincidunt, lectus enim tempus lorem, ac semper lacus metus quis sapien. Nam vitae mi nunc. Aliquam pellentesque pretium vestibulum. In pellentesque, est non dignissim faucibus, ligula metus semper leo, quis cursus lorem massa vitae augue. In in pharetra libero, ut auctor urna. In sit amet urna molestie ipsum ultricies hendrerit ac at tellus. Nulla at erat id ipsum iaculis aliquam.
                   </p>
                   <p>
                    Duis metus magna, viverra et mattis id, viverra eu ex. Nam laoreet porta maximus. Integer finibus tempor diam in porttitor. Etiam vestibulum sem ante, vitae faucibus arcu elementum id. Maecenas feugiat tortor tellus, et iaculis lacus ultrices sed. Morbi magna dui, dictum ut ex ullamcorper, tempus tincidunt sapien. Aliquam ac malesuada felis. Proin tincidunt nisi eget dolor blandit tincidunt. Fusce fringilla eu lorem ac gravida. Pellentesque finibus faucibus sem, eget commodo nunc iaculis sed. Maecenas convallis velit ac sem varius malesuada. Duis sed aliquet massa. Quisque vehicula, ante ut luctus sollicitudin, nunc nunc aliquet leo, a sodales enim ante id ipsum. Nunc sodales orci nisi.
                   </p>
                </div>
               <div class="product-main">
                <p class="product-intro">Keep tricky surfaces and hard-to-reach areas clean with this upright cordless vacuum cleaner.</p> 
                <p>It's just as powerful on wood, carpets, laminate flooring and tiles. The handheld Bosch Athlet vacuum has a shoulder strap, making it easy to carry. And there's no rush, as the rechargeable battery lasts up to an hour.</p>
                <p>Available to rent as an additional item only.</p>
               </div> 
                
                

               
         </div>
         <div class="col-4 col-expanded">
           
           <div class="module-product-video-cta centered">
               <div class="module-price-type">
                   <p class="rental-type">Weekly Rental</p>
                   <p class="price-point">&pound;3.00</p>
               </div>
               <img src="images/bosch-product-video.png" />
              <div class="product-desc-video"> 
                <p>Bosch Cordless Floor Cleaner<br />
                BCH625KT</p>
                <p>Rent from Forbes Rentals today for just &pound;3.00 per week</p>
              </div> 

               <a href="apply.asp" class="button-product-video">Apply Now</a>
               
               <p class="call">Or Call</p>
               <p class="tel"><a href="tel:0800 00 63 00">0800 00 63 00</a></p>
           </div>
          
          
          


          
          
            <p class="pull-quote">
                 It's just as powerful on wood, carpets, laminate flooring and tiles.
            </p>
          
          
          
        </div>
      </div>
      
      
                      <div class="product-features">
                <div class="col-3">
                    <h3>Product Features</h3>
                </div>
                <div class="col-9">
                    <ul>
                        <li>Handy attachments include the crevice nozzle and a long, flexible hose</li>
                        <li>Weighs just 3kg and holds up to 0.9 litres</li>
                        <li>Ideal as a lightweight, portable vacuum cleaner for the car</li>
                        <li>Recharges to full power in 6 hours, or to 80% power in 3 hours</li>
                        <li>Bosch Sensor Bagless technology keeps things simple</li>
                    </ul>
                </div><div class="clearfix"></div>
               </div>
      
      
      
      
    </div>

   </div>	
  </div>
</div>













<script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>


    <script>
       (function() { 
        var viddy = {
            init:function() {
                
            },
            productVideos:function() {
                var toggleTranscript = $('a.transcript'),
                    wrapperTranscript = $('div.transcript-wrapper')
                    wrapperTranscript.hide();
                    toggleTranscript.on('click',function() {
                        if($(this).next(wrapperTranscript).is(':hidden')) {
                            $(this).next(wrapperTranscript).slideDown();
                            $(this).text('Hide transcript')
                        } else {
                            $(this).next(wrapperTranscript).slideUp();
                            $(this).text('Show transcript')
                        }
                    })
            }
        }
        viddy.init();
        viddy.productVideos();
       })();
        
        
        
    </script>

         
</div> <!-- contentwrapper //-->
<!--#include file="includes/footer.inc.asp" -->