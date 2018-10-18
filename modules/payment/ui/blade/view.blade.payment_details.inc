<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'bao/class.paymentbao.inc';
$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
$getRegistrationFee = '';
$Type = $_GET['type'];
//payment id 
$PID = $_GET['pid'];

$RegistrationFee = new RegistrationFee();
$RegistrationFee->setID($PID);
$getRegistrationFee = $_PaymentBAO->getRegistrationFee($RegistrationFee);
?>