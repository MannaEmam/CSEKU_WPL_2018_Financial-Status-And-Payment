<?php
include_once './common/class.common.inc';
//include_once 'blade/view.reg_payment.blade.inc';
?>
<div class="panel panel-default">
	<div class="panel-heading">Registration Fee </div>
	<div class="panel-body">
		<h1 class="hh1"> KHULNA UNIVERSITY </h1>
		<h2 class="hh1" id="hh2"> Students Payment Receipt </h2>
		<div class="aa">
		Student Name:			<br>
		Discipline:
		Roll No:<br>
		Term:
		Year:
		</div>    
<form class="f1" method="POST" action="http://jkorpela.fi/cgi-bin/echo.cgi">
<table width="437" class="t1">
	  <tr>
    <th>Description</th>
    <th >Taka</th>
  </tr>
  <tr>
    <td>Your name</td>
    <td>
      <input TYPE="number" NAME="name">
    </td>
  </TR>
  <TR>
    <TD>Your E-mail address</TD>
    <TD><INPUT TYPE="number" NAME="email"></TD>
  </TR>
</table>
<P><INPUT TYPE="SUBMIT" VALUE="Submit" NAME="B1"></P>
</form>