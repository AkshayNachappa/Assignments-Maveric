<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Census 2011</title>
<link rel="stylesheet" href="styles.css" type="text/css">
</head>
<body>

<div class="header">
    <a href="#default" class="logo"><img src="images/census-logo.png" 
        width ="70" height="60"></a>
    <div class="header-center">
      <a href="Census-homepage"><b>CENSUS 2011</b></a>
    </div>
    <a class="logo2"><img src="images/maveric-logo.png" 
        width ="70" height="60"></a>
</div>
  
<hr>
<p id="tag">A Search Filter page</p>
<hr>
<div id="form-box">
    <div class="left-box">
        <form name="loginForm" action="LoginServlet" method="POST">
            <label for="state" style="margin-left: 14%;">Choose State:</label>
                <select name="state" id="state">    
                    <option value="" disabled selected>Select State</option>
                    <option value="ANDAMAN AND NICOBAR ISLANDS">ANDAMAN AND NICOBAR ISLANDS</option>
<option value="ANDHRA PRADESH">ANDHRA PRADESH</option>
<option value="ARUNACHAL PRADESH">ARUNACHAL PRADESH</option>
<option value="ASSAM">ASSAM</option>
<option value="BIHAR">BIHAR</option>
<option value="CHANDIGARH">CHANDIGARH</option>
<option value="CHHATTISGARH">CHHATTISGARH</option>
<option value="DADRA AND NAGAR HAVELI">DADRA AND NAGAR HAVELI</option>
<option value="DAMAN AND DIU">DAMAN AND DIU</option>
<option value="GOA">GOA</option>
<option value="GUJARAT">GUJARAT</option>
<option value="HARYANA">HARYANA</option>
<option value="HIMACHAL PRADESH">HIMACHAL PRADESH</option>
<option value="JAMMU AND KASHMIR">JAMMU AND KASHMIR</option>
<option value="JHARKHAND">JHARKHAND</option>
<option value="KARNATAKA">KARNATAKA</option>
<option value="KERALA">KERALA</option>
<option value="LAKSHADWEEP">LAKSHADWEEP</option>
<option value="MADHYA PRADESH">MADHYA PRADESH</option>
<option value="MAHARASHTRA">MAHARASHTRA</option>
<option value="MANIPUR">MANIPUR</option>
<option value="MEGHALAYA">MEGHALAYA</option>
<option value="MIZORAM">MIZORAM</option>
<option value="NAGALAND">NAGALAND</option>
<option value="NCT OF DELHI">NCT OF DELHI</option>
<option value="ORISSA">ORISSA</option>
<option value="PONDICHERRY">PONDICHERRY</option>
<option value="PUNJAB">PUNJAB</option>
<option value="RAJASTHAN">RAJASTHAN</option>
<option value="SIKKIM">SIKKIM</option>
<option value="TAMIL NADU">TAMIL NADU</option>
<option value="TRIPURA">TRIPURA</option>
<option value="UTTAR PRADESH">UTTAR PRADESH</option>
<option value="UTTARAKHAND">UTTARAKHAND</option>
<option value="WEST BENGAL">WEST BENGAL</option>
                </select>
                <br> <br>
                <label for="category" style="margin-left: 14%;">Choose Category:</label>
                <select name="category" id="category">
                    <option value="" disabled selected>Select Category</option>
                    <option value="State_name">State_name</option>
<option value="Male_population">Male_population</option>
<option value="Female_population">Female_population</option>
<option value="Total_Population">Total_Population</option>
<option value="No_Districts">No_Districts</option>
<option value="Avg_Population">Avg_Population</option>
<option value="Sex_Ratio">Sex_Ratio</option>
<option value="Sex_Ratio_Remark">Sex_Ratio_Remark</option>
                </select>
            <br><br>
            <input type="reset" value="Reset" style="margin-left:20%;">
            <input type="submit" value="Submit" >
        </form>        
      </div>
</div>

<br> <br>
<hr>
<hr>

<p style="text-align: center; font-size: 18px;"><b>TABLE</b></p>


</body>
</html>