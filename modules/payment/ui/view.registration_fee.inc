<?php
include_once './common/class.common.inc';
//include_once 'blade/view.reg_payment.blade.inc';
?>
<div class="panel panel-default">
	<div class="panel-heading">Registration Fee </div>
	<div class="panel-body">
		<h1 class="hh1"> KHULNA UNIVERSITY </h1>
		<h2 class="hh1" id="hh2"> Registration Fees Receipt </h2>
		<div class="aa">
		Student Name:			<br>
		Discipline:
		Roll No:<br>
		Term:
		Year:
		</div>    
</div>
<FORM METHOD="POST" ACTION="http://jkorpela.fi/cgi-bin/echo.cgi">
<TABLE class="t1">
	  <tr>
    <th>Firstname</th>
    <th>Lastname</th>
  </tr>
  <TR>
    <TD>Your name</TD>
    <TD>
      <INPUT TYPE="TEXT" NAME="name" SIZE="20">
    </TD>
  </TR>
  <TR>
    <TD>Your E-mail address</TD>
    <TD><INPUT TYPE="TEXT" NAME="email" SIZE="20"></TD>
  </TR>
</TABLE>
<P><INPUT TYPE="SUBMIT" VALUE="Submit" NAME="B1"></P>
</FORM>