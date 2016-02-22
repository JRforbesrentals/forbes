<%@LANGUAGE="VBSCRIPT" CODEPAGE="65001"%>
<!--#include file="includes/config.asp" -->
<%
page_title = "Consumer Electronics Jargon Buster"
page_keywords = "consumer electronics glossary, Forbes Rentals, Forbes Direct"
page_description = "Jargon buster for more information about the various features and technologies."

%>
<!--#include file="includes/header.inc.asp" -->
<div class="contentwrapper">
  <div class="row clearfix">
      <div class="module clearfix">
       	<div class="col-3 col-collapsing">
  
		  <img src="images/customer-info-image.jpg" alt="Customer Information">


        </div>
        <div class="col-9">
<div id="glossary">

	<h1>Consumer Electronics (Electronic Home Entertainment Equipment) Jargon Buster</h1>
	<h2>Use our handy jargon buster for more information about the various features and technologies offered in our wide range of electronic home entertainment rental at Forbes Television.</h2>

	<dl style="margin-bottom: 0;">
<%
dim csv
csv = "consumer-electronics-glossary.csv"
set fso = createobject("scripting.filesystemobject")
set act = fso.opentextfile(server.mappath(csv))
lns = act.readall
lns = replace(lns,chr(34),"")
lns_array = split(lns,chr(13))
For Each ln In lns_array
ln = split(ln,"#")
dt = replace(ln(0),chr(10),"")
dd = ln(1)

%>
	  <dt><%= dt %></dt>
	  <dd><%= dd %>
<%
If Ubound(ln) > 1 Then
	de = ln(2)
%>
		<div class="slider"><a class="toggle">more…</a>
		  <div class="slide">
			<%=de%>
		  </div>
	    </div>
	  </dd>
<%
Else
%></dd>
<%
End If
Next
%>
	</dl>
</div>




        </div> 
          
      </div>
      </div>
    </div> <!-- contentwrapper //-->
<!--#include file="includes/footer.inc.asp" -->