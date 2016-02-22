<!--#include file="secureOLA/includes/config.asp" -->
<%
page_title = "Apply Online"
%>
<!--#include file="includes/header.inc.asp" -->
<script type="text/javascript" language="JavaScript">
<!-- Copyright 2005 Bontrager Connection, LLC
//
// Two places need to be customized.
//
//
// Place 1:
// Between the quotation marks, specify the name of 
//    your form.

var FormName = "form1";


// Place 2:
// Between the quotation marks, specify the field names 
//    that are required. List the field name separated 
//    with a comma.

var RequiredFields = "Title,Forename,Surname,Phone,DOB1,DOB2,DOB3,email";


//
// No other customization of this JavaScript is required.
//
/////////////////////////////////////////////////////////

function ValidateRequiredFields()
{
var FieldList = RequiredFields.split(",")
var BadList = new Array();
for(var i = 0; i < FieldList.length; i++) {
	var s = eval('document.' + FormName + '.' + FieldList[i] + '.value');
	s = StripSpacesFromEnds(s);
	if(s.length < 1) { BadList.push(FieldList[i]); }
	}
if(BadList.length < 1) { return true; }
var ess = new String();
if(BadList.length > 1) { ess = 's'; }
var message = new String('\n\nThe following field' + ess + ' are required:\n');
for(var i = 0; i < BadList.length; i++) { message += '\n' + BadList[i]; }
alert(message);
return false;
}

function StripSpacesFromEnds(s)
{
while((s.indexOf(' ',0) == 0) && (s.length> 1)) {
	s = s.substring(1,s.length);
	}
while((s.lastIndexOf(' ') == (s.length - 1)) && (s.length> 1)) {
	s = s.substring(0,(s.length - 1));
	}
if((s.indexOf(' ',0) == 0) && (s.length == 1)) { s = ''; }
return s;
}
// -->
</script>  
<div class="contentwrapper">
  <div class="row clearfix">
       <div class="module clearfix">
         <div class="col-12">
  

<form action="secureOLA/address.asp" method="get" name="form1" onSubmit="return ValidateRequiredFields();" >	
		<div>
			<label for="Title">Title</label>
			<select name="Title" id="Title">
				<option value="Mr">Mr</option>
				<option value="Mrs">Mrs</option>
				<option value="Miss">Miss</option>
				<option value="Ms">Ms</option>
				<option value="Dr">Dr</option>
				<option value="Sir">Sir</option>
				<option value="Lady">Lady</option>
				<option value="Lord">Lord</option>
				<option value="FR">Father</option>
				<option value="Sister">Sister</option>
				<option value="Prof">Professor</option>
			</select>
		</div>
		
		<div>
			<label for="Forename">First Name</label>
			<input type="text" name="Forename" id="Forename" value="" />
		</div>
		
		<div>
			<label for="MiddleName">Middle Name</label>
			<input type="text" name="MiddleName" id="MiddleName" value="" />
		</div>
		
		<div>
			<label for="Surname">Surname</label>
			<input type="text" name="Surname" id="Surname" value="" />
		</div>
		
		<div>
			<label for="FormerTitle">Former Title</label>
			<select name="FormerTitle" id="FormerTitle">
				<option value="Mr">Mr</option>
				<option value="Mrs">Mrs</option>
				<option value="Miss">Miss</option>
				<option value="Ms">Ms</option>
				<option value="Dr">Dr</option>
				<option value="Sir">Sir</option>
				<option value="Lady">Lady</option>
				<option value="Lord">Lord</option>
				<option value="FR">Father</option>
				<option value="Sister">Sister</option>
				<option value="Prof">Professor</option>
			</select>
		</div>
		
		<div>
			<label for="FormerForename">Former First Name<em>if applicable</em></label>
			<input type="text" name="FormerForename" id="FormerForename" value="" />
		</div>
		
		<div>
			<label for="FormerMiddleName">Former Middle Name<em>if applicable</em></label>
			<input type="text" name="FormerMiddleName" id="FormerMiddleName" value="" />
		</div>
		
		<div>
			<label for="FormerSurname">Former Surname<em>if applicable</em></label>
			<input type="text" name="FormerSurname" id="FormerSurname" value="" />
		</div>
		
		
		<div id="dob">
			<label for="DOB">Date of Birth <strong>*</strong> <em>e.g. 01/01/1955</em></label>
			<input name="DOB1" type="text" id="DOB1" size="2" maxlength="2" class="small"> /
			<input name="DOB2" type="text" id="DOB2" size="2" maxlength="2" class="small"> /
			<input name="DOB3" type="text" id="DOB3" size="4" maxlength="4" class="small">
		</div>
		
		<div>
			<label for="Marital">Marital Status</label>
			<select name="Marital" id="Marital">
				<option value="M">Married</option>
				<option value="S">Single</option>
				<option value="D">Divorced</option>
				<option value="W">Widowed</option>
				<option value="X">Separated</option>
				<option value="P">Partner</option>
			</select>
		</div>
		
		<div>
			<label for="Resident">Residential Status</label>
			<select name="Resident" id="Resident">
				<option value="O">Owned</option>
				<option value="U">Rented-Unfurnished</option>
				<option value="F">Rented-Furnished</option>
				<option value="T">Tied</option>
				<option value="P">With Parents</option>
			</select>
		</div>
		
		<div>
			<label for="Phone">Telephone <strong>*</strong></label>
			<input name="Phone" type="text" value="" size="40" maxlength="40">
		</div>
		
		<div>
			<label for="email">Email <strong>*</strong></label>
			<input name="email" type="text" value="" size="40" maxlength="40">
		</div>
		
		<div>
			<label for="prod">Interested in?</label>	
			<select name="prod" id="prod">
				<option value="unselected">Please Select</option>
				<option value="Domestic Appliance">Domestic Appliance</option>
				<option value="Television">Television</option>
				<option value="Home Cinema">Home Cinema</option>
				<option value="Mobility Scooter">Mobility Scooter</option>
			</select>
		</div>
	
		<input name="pcode" type="hidden" id="pcode" value="<%=Request.form("PostCodeSubmitted")%>">
		<input name="Agree" type="hidden" id="Agree" value="<%=Request.form("AgreedTC")%>">
		
		<div>
			<input name="Advisor" type="text" value= "<%=Request.Form("advisor") %>">
		</div>
		
		<div class="buttons">
			<input type="reset" name="Submit2" value="Reset">
			<input type="submit" name="Submit" value="Next">
			<input type="hidden" name="isSubmittedp1" value="yes">
		</div>
		
		<p>Please note that the fields marked with <strong>*</strong> are required</p>
		
	</form>
  



          </div>         
       </div>
     </div>
    </div> <!-- contentwrapper //-->
<!--#include file="includes/footer.inc.asp" -->