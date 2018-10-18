<?php
include_once './common/class.common.inc';
include_once 'blade/view.myaccount.blade.inc';
?>
<div class="panel panel-default">
<div class="panel-heading">Registration Fee </div>
<div class="panel-body">
<h1 class="hh1"> KHULNA UNIVERSITY </h1>
<h2 class="hh1" id="hh2"> Students Payment Receipt </h2>
<div class="aa">
Name: <?php echo $getROW->getFirstName(); ?>			<br>
Student id: <?php echo $getROW->getUniversityID(); ?><br>
Discipline: <?php echo $getROW->getDiscipline(); ?><br>
</div>
</form>
<table class="table">
  <tr>
    <th>Date</th>
    <th>Type</th>
    <th>Details</th>
  </tr>
</table>