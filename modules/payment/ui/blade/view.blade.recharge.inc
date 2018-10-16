<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'bao/class.paymentbao.inc';
$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
/*
$globalUser = '';
$globalUser = $_SESSION["globalUser"];
$User = new User();
$User->setID($globalUser->getID());
$getROW = $_PaymentBAO->getUserById($User)->getResultObject();
//getting discipline shortcode
$Discipline = $getROW->getDiscipline();
//setting batch from university id
$UID = $getROW->getUniversityID();
//setting name
$name = $getROW->getFirstName();
var_dump($name);*/
//getting current date
$date = date('Y/m/d');
/* saving the registration Payment Receipt*/
if(isset($_POST['recharge']))
{
	 $Recharge = new Recharge();	
	 $Recharge->setID(Util::getGUID());
	 $Recharge->setDate($date);
     $Recharge->setEmail($_DB->secureInput($_POST['email']));
	 $_PaymentBAO->setRechargeAmount($Recharge);
}
?>
