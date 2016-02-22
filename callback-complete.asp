<!--#include file="includes/config.asp" -->
<%
page_title = "Call Me Back"
%>
<!--#include file="includes/header.inc.asp" -->
 <div class="contentwrapper">
   <div class="row clearfix">
       <div class="module clearfix">
         <div class="col-12">
  

<h1>Call Me Back - Details Received</h1>

<%
	
 Dim objOLAMail
     
  Set objOLAMail = CreateObject("CDO.Message")
     
  objOLAMail.Subject = "Forbes Rentals - Website Call Me Back Request"
  objOLAMail.From = "onlineapp@forbesoffers.co.uk"
  objOLAMail.To = "rent@forbes-rentals.co.uk"
  objOLAMail.Cc = "jason.rigby@forbes-rentals.co.uk"
  objOLAMail.TextBody = "Name: " & Request.Form("Name") & "  Email: " & Request.Form("Email") & "  Tel: " & Request.Form("Telephone_Number") & " Preferred Call Time: " & Request.Form("CallTime")  & " Existing Customer?: " & Request.Form("Existing") & " How Can We Help?: " & Request.Form("HowHelp")
    
  ' Configure external mail server settings...

  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusing")=2
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpserver")="smtp.livemail.co.uk"
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/smtpauthenticate") = 1
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendusername") ="onlineapp@forbesoffers.co.uk"
  objOLAMail.Configuration.Fields.Item ("http://schemas.microsoft.com/cdo/configuration/sendpassword") ="Forbes1926"

 
  objOLAMail.Configuration.Fields.Update
      
  objOLAMail.Send
     
  set objOLAMail = nothing

response.redirect("http://www.forbes-rentals.co.uk/callback-ack.asp")

%>

      
<p>Thank you for applying online. Once your application has been processed by Forbes one of our friendly trained staff will call to advise you on our Rental Products.</p>


          </div>         
       </div>
     </div>
    </div> <!-- contentwrapper //-->
<!--#include file="includes/footer.inc.asp" -->