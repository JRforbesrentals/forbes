<!--#include file="includes/config.asp" -->
<!--#include file="includes/header.inc.asp" -->
  <div class="contentwrapper">
       <div class="module clearfix">
         <div class="col-12">
  			<h1>Call Me Back</h1>
            <p>Please leave your contact details and preferred time for us to call you and we'll be in touch.</p>
         </div>
         <div class="col-3 col-collapsing">
  			<img src="images/Andre.png" alt="Andre of Forbes Rentals">
         </div>
         <div class="col-9">
           <form action="callback-complete.asp" method="post" name="form1" id="form1">
               <div class="col-3 col-expanded">                  
                    <label for="Email">Email Address</label>
               </div>
               <div class="col-9 col-expanded">
                    <input name="Email" type="text" id="Email" />
                </div>
               <div class="col-3 col-expanded">                  
                    <label for="Name">Name</label>
               </div>
               <div class="col-9 col-expanded">
                    <input name="Name" type="text" id="Name" />
                </div>
               <div class="col-3 col-expanded">                  
                    <label for="Telephone_Number">Telephone Number</label>
               </div>
               <div class="col-9 col-expanded">
                    <input name="Telephone_Number" type="text" id="Telephone_Number" />
                </div>
               <div class="col-3 col-expanded">                  
                    <label for="CallTime">Preferred Call Time</label>
               </div>
               <div class="col-9 col-expanded">
                    <input name="CallTime" type="text" id="CallTime" />
                </div>

               <div class="col-3 col-expanded">                  
                    <label for="Existing">Existing Customer</label>
               </div>
               <div class="col-9 col-expanded">
                    <input name="Existing" type="checkbox" id="Existing" value="yes" />
                </div>   
               <div class="col-12 formnav-blank">
				<input type="submit" name="Submit" value="Call Me" class="button-next" />
                <input type="hidden" name="isSubmitted" value="yes" />
			   </div>
 			</form>
          </div>         
       </div>
 </div> <!-- contentwrapper //-->
<!--#include file="includes/footer.inc.asp" -->