<?php
include_once './common/class.common.inc';
include_once 'blade/view.registration_fee.blade.inc';
?>
<div class="panel panel-default">
	<div class="panel-heading">Registration Fee </div>
	<div class="panel-body">
		<h1 class="hh1"> KHULNA UNIVERSITY </h1>
		<h2 class="hh1" id="hh2"> Students Payment Receipt </h2>
		<div class="aa">
		Name:<?php echo $getROW->getFirstName(); ?>			<br>
		Student id:<?php echo $getROW->getUniversityID(); ?><br>
		Discipline:<?php echo $getROW->getDiscipline(); ?><br>
		</div>    
<form class="f1" method="post" action="./blade/view.registration_fee.blade.inc">
<table width="437" class="t1">
	  <tr>
    <th>Description</th>
    <th >Taka</th>
  </tr>
  <tr>
    <td>Admission fee</td>
    <td>
      <input type="number" name="name">
    </td>
  </TR>
  <TR>
    <TD>Pay book</TD>
    <TD><input TYPE="number" NAME="email"></TD>
  </TR>
</table>
<br>

<input id="btn_s" type="submit" value="Pay Fee" name="b1">
</form>