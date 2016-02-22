<!DOCTYPE html>
<html lang="en-GB">
<head>  
<meta charset="utf-8" />
<title></title>
<meta name=""Keywords"" content="""  """ />
<meta name=""Description"" content="""  """ />
 
<meta name="viewport" content="width=device-width,initial-scale=1">   
<link rel="stylesheet" type="text/css" href="../styles/main.css">
<!--[if IE ]>
  <link rel="stylesheet" type="text/css" href="../styles/ie.css">  
<![endif]-->
<!--[if IE 9]>
  <link rel="stylesheet" type="text/css" href="../styles/ie9.css">
<![endif]-->
<!--[if lt IE 9]>
  <link rel="stylesheet" type="text/css" href="../styles/ie8less.css">  
  <script src="../scripts/ie8less.js"></script>      
 <![endif]-->


 <link rel="shortcut icon" href="../favicon.ico">
 </head>
 <body>
 <div class="contentwrapper">
   <div class="row clearfix">
       <div class="module clearfix">
         <div class="col-12">
  

<h1>Call Me Back - Details Received</h1>

<%
	
 Dim objOLAMail
     
  Set objOLAMail = CreateObject("CDO.Message")
     
  objOLAMail.Subject = "Free laundry or Dishwasher Site Survey Booking"
  objOLAMail.From = "onlineapp@forbesoffers.co.uk"
  objOLAMail.To = "info@forbes-professional.co.uk"
  objOLAMail.Cc = "jason.rigby@forbes-rentals.co.uk"
  objOLAMail.TextBody = "Name: " & Request.Form("Name") & " Name of Business: " & Request.Form("Business") & " Postcode: " & Request.Form("Postcode") & " Email: " & Request.Form("Email") & " Tel: " & Request.Form("Telephone_Number")
    
  ' Configure external mail server settings...

  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.livemail.co.uk"
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="onlineapp@forbesoffers.co.uk"
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="Forbes1926"

 
  objOLAMail.Configuration.Fields.Update
      
  objOLAMail.Send
     
  set objOLAMail = nothing

response.redirect("http://www.forbes-rentals.co.uk/forbes.staging/free-survey/survey-ack.asp")

%>

      
<p>Thank you for booking your Free laundry or Dishwasher Site Survey Booking. One of our trained advisers will contact you on the details provided.</p>


          </div>         
       </div>
     </div>
    </div> <!-- contentwrapper //-->
     </div>
 </body>
 </html>
