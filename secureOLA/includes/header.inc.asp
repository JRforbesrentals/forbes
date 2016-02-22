<%
Dim NavCategoriesRS
Dim NavCategoriesRS_cmd
Dim NavCategoriesRS_numRows

Set NavCategoriesRS_cmd = Server.CreateObject ("ADODB.Command")
NavCategoriesRS_cmd.ActiveConnection = MM_rsMain_STRING
NavCategoriesRS_cmd.CommandText = "SELECT * FROM Categories WHERE include Like '-1'" 
NavCategoriesRS_cmd.Prepared = true

Set NavCategoriesRS = NavCategoriesRS_cmd.Execute
NavCategoriesRS_numRows = 0

Dim Repeat_Cat__numRows
Dim Repeat_Cat__index

Repeat_Cat__numRows = -1
Repeat_Cat__index = 0
NavCategoriesRS_numRows = NavCategoriesRS_numRows + Repeat_Cat__numRows

Dim rsMain__varCat2
rsMain__varCat2 = "%"
If (Request.QueryString("Category") <> "") Then 
  rsMain__varCat2 = Request.QueryString("Category")
End If

Dim NavSuppliersRS
Dim NavSuppliersRS_cmd
Dim NavSuppliersRS_numRows

Set NavSuppliersRS_cmd = Server.CreateObject ("ADODB.Command")
NavSuppliersRS_cmd.ActiveConnection = MM_rsMain_STRING
NavSuppliersRS_cmd.CommandText = "SELECT DISTINCT S.Supplier FROM Suppliers S, NewProducts P, Categories C WHERE P.Supplier = S.SupplierID AND P.Category = C.CategoryID AND S.include Like '-1'AND C.CategoryID LIKE'" + Replace(rsMain__varCat2, "'", "''") + "' " 
NavSuppliersRS_cmd.Prepared = true

Set NavSuppliersRS = NavSuppliersRS_cmd.Execute
NavSuppliersRS_numRows = 0

Dim Repeat_sup__numRows
Dim Repeat_sup__index

Repeat_sup__numRows = -1
Repeat_sup__index = 0
NavSuppliersRS_numRows = NavSuppliersRS_numRows + Repeat_sup__numRows
%>
<!DOCTYPE html>
<html lang="en-GB">
<head>  
<meta charset="utf-8" />
<title><%=page_title%> | <%=COMPANY_NAME%></title>
<%
If len(page_keywords)>0 Then
	Response.Write(vbTab & "<meta name=""Keywords"" content=""" & page_keywords & """ />" & vbCrLf)
End If
If Len(page_description)>0 Then
	Response.Write(vbTab & "<meta name=""Description"" content=""" & page_description & """ />" & vbCrLf)
End If
%>
<meta name="viewport" content="width=device-width,initial-scale=1">   
<link rel="stylesheet" type="text/css" href="<%=SITE_ROOT_PATH%>styles/main.css">
<!--[if IE ]>
 <link rel="stylesheet" type="text/css" href="<%=SITE_ROOT_PATH%>styles/ie.css">  
<![endif]-->
<!--[if IE 9]>
 <link rel="stylesheet" type="text/css" href="<%=SITE_ROOT_PATH%>styles/ie9.css"> 
  <script src="<%=SITE_ROOT_PATH%>scripts/ie9.js"></script>   
<![endif]-->
<!--[if lt IE 9]>
 <link rel="stylesheet" type="text/css" href="<%=SITE_ROOT_PATH%>styles/ie8less.css">  
 <script src="<%=SITE_ROOT_PATH%>scripts/ie8less.js"></script>      
<![endif]-->
 <%=page_head%>
 <!--#include file ="analytics.inc.asp" -->
 <link rel="shortcut icon" href="<%=SITE_ROOT_PATH%>favicon.ico">
 </head>
 <body>
 <div class="headermain">
   <div class="contentwrapper">
   <div class="row clearfix">
     <div class="col-4">
        <a href="<%=SITE_ROOT_PATH%>index.asp"><img src="<%=SITE_ROOT_PATH%>images/forbes-rentals-logo.png" class="forbeslogo" alt="<%=COMPANY_NAME%>" /></a>
      </div>
      <div class="col-4">
          <img src="<%=SITE_ROOT_PATH%>images/forbes-90th.png" alt="Forbes 90 years of service, 1926 - 2016" class="forbes-90 centered" />
      </div>
      <div class="col-4 alignright">
        <p class="tel">0800 00 63 00</p>
        <p class="callus"><span class="icon-callus"></span>Call to speak to an advisor</p>
      </div>
     </div><!-- row //-->
     </div>
  </div> <!-- headermain //-->
   <nav>
    <a href="<%=SITE_ROOT_PATH%>index.asp"><img src="<%=SITE_ROOT_PATH%>images/forbes-logo-blue.png" alt="Forbes Rentals" class="mobile-logo" /></a>
	<ul id="menu">
    		<li><a href="<%=SITE_ROOT_PATH%>index.asp" class="icon-home"><span>About</span></a></li>
            <li><a href="<%=SITE_ROOT_PATH%>index.asp" class="dropdown icon-dropdown">About</a>
              <div class="submenu">
                <ul class="ddleft">
                      <li><a href="<%=SITE_ROOT_PATH%>Adverse_Weather.asp">Adverse Weather</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>aerials.asp">Aerial and Satellite</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>coverage.asp">Check Service Area</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>Choose-the-correct-size-TV.asp">Choose Correct TV Size</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>support.asp">Customer Information</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>hints-and-tips.asp">Hints and Tips</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>holiday-opening.asp">Holiday Opening</a></li>
                 </ul>
                 <ul class="ddright">
                      <li><a href="<%=SITE_ROOT_PATH%>Industry_News.asp">Industry News</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>Media.asp">Media</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>quality-refurbished.asp">Quality Refurbished Rental</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>Recruitment.asp">Recruitment</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>showroom.asp">See our Showroom</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>service.asp">Repairs and Service</a></li> 
                 </ul>
               </div>
            </li>
            <li><a href="<%=SITE_ROOT_PATH%>why-rent.asp" class="toplevel">Why Rent?</a></li>
            <li><a href="<%=SITE_ROOT_PATH%>Samsung-4KTV.asp" class="toplevel">Ultra HD 4K</a></li>
            <li><a href="#" class="dropdown icon-dropdown">Products</a>
              <div class="submenu products">
                <ul class="ddleft">
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=A">Plasma</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=B">LCD</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=C">LED</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=F">DVD</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=I">Home Cinema</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=J">Home Laundry</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=K">Dishwashers</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=L">Refrigeration</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=N">Freeview</a></li>
                 </ul>
                 <ul class="ddright">
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=ZA">Stands</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=ZZ">Cookers</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=ZC">Scooters</a>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=ZD">Other Appliances</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=ZE">Accessories</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>mobility-accessories.asp">Scooter Accessories</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listing2.asp?Make=Value">Value Range</a></li>
                      <li><a href="<%=SITE_ROOT_PATH%>listingstu.asp?Make=Student">Student Rentals</a></li>
                 </ul>
               </div>
             </li>
             <li><a href="<%=SITE_ROOT_PATH%>mobility.asp" class="dropdown icon-dropdown">Mobility</a>
              <div class="submenu mobility ddsingle">
                <ul>
                	<li><a href="<%=SITE_ROOT_PATH%>listing.asp?Category=ZC">Scooters</a>
                    <li><a href="<%=SITE_ROOT_PATH%>why-rent-scooter.asp">Why rent a Scooter</a></li>
                    <li><a href="<%=SITE_ROOT_PATH%>mobility-q-a.asp">Mobility Q and A</a></li>
                    <li><a href="<%=SITE_ROOT_PATH%>mobility-accessories.asp">Scooter Accessories</a></li>
                </ul>
              </div>
            </li>
            <li><a href="<%=SITE_ROOT_PATH%>apply.asp" class="toplevel">Apply Now</a></li>
            <li><a href="<%=SITE_ROOT_PATH%>contact.asp" class="dropdown icon-dropdown">Contact</a>
            <div class="submenu contact ddsingle">
                <ul>
                 <li><a href="<%=SITE_ROOT_PATH%>Call.asp">Book a Callback</a></li>
                 <li><a href="<%=SITE_ROOT_PATH%>Recommend-a-friend.asp">&pound;200 of Cash Rewards</a></li>
                 <li><a href="<%=SITE_ROOT_PATH%>showroom.asp">See our Showroom</a></li>
                </ul>
              </div>
            </li>
            <li><a href="http://www.forbes-professional.co.uk/index.asp" class="dropdown icon-dropdown">Forbes Business Solutions</a>
              <div class="submenu professional ddsingle">
               <ul>
                   <li><a href="http://www.forbes-professional.co.uk/B2B/TelevisionandAV.asp">Television and AV</a></li>
                   <li><a href="http://www.forbes-professional.co.uk/B2B/DigitalSignage.asp">Digital Signage</a></li>
                   <li><a href="http://www.forbes-professional.co.uk/laundry/index.asp">Laundry &amp; Dishwashing</a></li>
                   <li><a href="http://www.forbes-professional.co.uk/B2B/indexB2B.asp">Business to Business</a></li>
               </ul>
             </div>
            </li>
           </ul>
		<div class="clearfix"></div>
  </nav>
      <div class="wrapper">
  	<a href="#" id="togglemenu" class="icon-menu">Menu</a>
       	  <div class="headermobile clearfix">
            <a href="<%=SITE_ROOT_PATH%>index.asp"><img src="<%=SITE_ROOT_PATH%>images/forbes-logo-mobile.png" class="forbeslogo" alt="Forbes Rentals" /></a>
      		<p class="tel large">0800 00 63 00</p>
     	  </div>   
    