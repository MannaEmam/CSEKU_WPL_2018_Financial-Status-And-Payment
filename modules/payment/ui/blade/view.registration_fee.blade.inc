<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'bao/class.paymentbao.inc';
$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
$globalUser = '';
$globalUser = $_SESSION["globalUser"];
$User = new User();
$User->setID($globalUser->getID());
$getROW = $_PaymentBAO->getUserById($User)->getResultObject();
//getting email
$email = $getROW->getEmail();
$getAccount = $_PaymentBAO->getAccountDetails($getROW)->getResultObject();
$balance = $getAccount->getAmount();
var_dump($balance);
//getting discipline shortcode
$Discipline = $getROW->getDiscipline();
//setting batch from university id
$UID = $getROW->getUniversityID();
//setting name
$name = $getROW->getFirstName();
//getting current date
date_default_timezone_set("Asia/Dhaka");
$date = date('Y/m/d');
/* saving the registration Payment Receipt*/
if(isset($_POST['pay']))
{
	 $total = ($_POST['af'] + $_POST['pb'] + $_POST['scg'] + $_POST['tp'] + $_POST['cr'] + $_POST['vf'] + $_POST['rt'] + $_POST['rrt'] + $_POST['bncc'] + $_POST['lb'] + $_POST['med'] + $_POST['cl'] + $_POST['rg'] + $_POST['ef'] + $_POST['sc'] + $_POST['gs'] + $_POST['pc'] + $_POST['mc'] + $_POST['tsc'] + $_POST['scl'] + $_POST['ec'] + $_POST['flib'] + $_POST['fcr'] + $_POST['mmc'] + $_POST['mfph'] + $_POST['sw'] + $_POST['sp'] + $_POST['pl'] + $_POST['ot'] );
	 if($total > $balance)
	 {
	 	header("Location: message.php");	 	
	 }
	 $RegistrationFee = new RegistrationFee();	
	 $RegistrationFee->setID(Util::getGUID());
     $RegistrationFee->setUniversityID($UID);
     $RegistrationFee->setName($name);
     $RegistrationFee->setEmail($email);
     $RegistrationFee->setDate($date);
     $RegistrationFee->setDiscipline($Discipline);
     $RegistrationFee->setTerm($_DB->secureInput($_POST['trm']));
     $RegistrationFee->setAdmissionFee($_DB->secureInput($_POST['af']));
     $RegistrationFee->setPayBook($_DB->secureInput($_POST['pb']));
	 $RegistrationFee->setSecurity($_DB->secureInput($_POST['scg']));
	 $RegistrationFee->setTransportation($_DB->secureInput($_POST['tp']));
	 $RegistrationFee->setCourseRegistration($_DB->secureInput($_POST['cr']));
	 $RegistrationFee->setVerification($_DB->secureInput($_POST['vf']));
	 $RegistrationFee->setRetake($_DB->secureInput($_POST['rt']));
	 $RegistrationFee->setReRetake($_DB->secureInput($_POST['rrt']));
	 $RegistrationFee->setBncc($_DB->secureInput($_POST['bncc']));
	 $RegistrationFee->setLibrary($_DB->secureInput($_POST['lb']));
	 $RegistrationFee->setMedical($_DB->secureInput($_POST['med']));
	 $RegistrationFee->setCultural($_DB->secureInput($_POST['cl']));
	 $RegistrationFee->setReligiousFee($_DB->secureInput($_POST['rg']));
	 $RegistrationFee->setExaminationFee($_DB->secureInput($_POST['ef']));
	 $RegistrationFee->setSessionCharge($_DB->secureInput($_POST['sc']));
	 $RegistrationFee->setGradesheet($_DB->secureInput($_POST['gs']));
	 $RegistrationFee->setProvisionalCertificate($_DB->secureInput($_POST['pc']));
	 $RegistrationFee->setMainCertificate($_DB->secureInput($_POST['mc']));
	 $RegistrationFee->setTranscript($_DB->secureInput($_POST['tsc']));
	 $RegistrationFee->setSecurityLibrary($_DB->secureInput($_POST['scl']));
	 $RegistrationFee->setEquivalenceCertificate($_DB->secureInput($_POST['ec']));
	 $RegistrationFee->setFineLibrary($_DB->secureInput($_POST['flib']));
	 $RegistrationFee->setFineRegistration($_DB->secureInput($_POST['fcr']));
	 $RegistrationFee->setMc_Mi($_DB->secureInput($_POST['mmc']));
	 $RegistrationFee->setMphilPhd($_DB->secureInput($_POST['mfph']));
	 $RegistrationFee->setStudentWelfare($_DB->secureInput($_POST['sw']));
	 $RegistrationFee->setSports($_DB->secureInput($_POST['sp']));
	 $RegistrationFee->setPublication($_DB->secureInput($_POST['pl']));
	 $RegistrationFee->setOthers($_DB->secureInput($_POST['ot']));
	 $_PaymentBAO->RegistrationPayment($RegistrationFee);
}
?>
