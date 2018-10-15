<?php
include_once './common/class.common.inc';
//include_once 'blade/view.reg_payment.blade.inc';
?>
<div class="panel panel-default">
	<div class="panel-heading">Registration Fee </div>
	<div class="panel-body">
		<h1 class="hh1"> KHULNA UNIVERSITY </h1>
		<h2 class="hh1" id="hh2"> Students Hall Payment Receipt </h2>
		<div class="aa">
		Student Name:			<br>
		Discipline:
		Roll No:<br>
		Term:
		Year:
		</div>
<form class="f1" method="post" action="http://jkorpela.fi/cgi-bin/echo.cgi">
<table width="437" class="t1">
	  <tr>
    <th>Description</th>
    <th >Taka</th>
  </tr>
  <tr>
    <td>01. Admission</td>
    <td>
      <input type="number" name="adm">
    </td>
  </tr>

	<tr>
		<td>02. Institutional</td>
		<td>
			<input type="number" name="name">
		</td>
	</tr>

	<tr>
		<td>03. Identification Card</td>
		<td>
			<input type="number" name="ic">
		</td>
	</tr>

	<tr>
		<td>04. Seat rent</td>
		<td>
			<input type="number" name="sr">
		</td>
	</tr>

	<tr>
		<td>05. Utensil</td>
		<td>
			<input type="number" name="ut">
		</td>
	</tr>

	<tr>
		<td>06. Common room</td>
		<td>
			<input type="number" name="cr">
		</td>
	</tr>

	<tr>
		<td>07. Sports</td>
		<td>
			<input type="number" name="sp">
		</td>
	</tr>

	<tr>
		<td>08. Religious Event</td>
		<td>
			<input type="number" name="re">
		</td>
	</tr>

	<tr>
		<td>09. Security(Returnable)</td>
		<td>
			<input type="number" name="scr">
		</td>
	</tr>

	<tr>
		<td>10. Contingency</td>
		<td>
			<input type="number" name="name">
		</td>
	</tr>

	<tr>
		<td>11. Hall anniversary</td>
		<td>
			<input type="number" name="ha">
		</td>
	</tr>

	<tr>
		<td>12. Fine</td>
		<td>
			<input type="number" name="fn">
		</td>
	</tr>

	<tr>
		<td>13. Others</td>
		<td>
			<input type="number" name="ot">
		</td>
	</tr>

</table>
<br>

<input id="btn_s" type="submit" value="Pay Fee" name="b1">
</form>
