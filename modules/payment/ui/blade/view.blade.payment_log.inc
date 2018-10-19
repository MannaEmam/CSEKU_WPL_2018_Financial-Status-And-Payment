<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'bao/class.paymentbao.inc';
$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
if(isset($_POST['search']))
{

	if(($_POST['selectedField']))
	{
		//student id
		$SID = $_POST['sid'];
		$RegistrationFee = new RegistrationFee();
		$RegistrationFee->setUniversityID($SID);
		$result = $_PaymentBAO->getRegistrationFeeBySid($RegistrationFee)->getResultObject();
	}
}
?>