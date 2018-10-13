<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'bao/class.registration_feebao.inc';
$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
$globalUser = '';
$globalUser = $_SESSION["globalUser"];
// var_dump($globalUser->getID());
$User = new User();	
$User->setID($globalUser->getID());	
$getROW = $_PaymentBAO->getUserById($User)->getResultObject();
// var_dump($getROW);
?>