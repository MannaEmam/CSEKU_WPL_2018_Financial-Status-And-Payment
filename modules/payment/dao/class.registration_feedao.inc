<?php
// write dao object for each class
include_once COMMON.'class.common.inc';
include_once COMMON.'class.common.payment.inc';
include_once COMMON.'class.common.user.inc';
include_once UTILITY.'class.util.inc';
Class PaymentDAO{

	private $_DB;
	private $_User;
	private $_RegistrationFee;

	public function __construct(){

		$this->_DB = DBUtil::getInstance();
		$this->_User = new User();
		$this->_RegistrationFee = new RegistrationFee();
	}
	public function getUserById($User){
		$ID = $User->getID();

		$SQL = "SELECT UniversityID,FirstName,MiddleName,LastName,DisciplineID FROM ums_user WHERE ID = '$ID'";
		
		$this->_DB->doQuery($SQL);

		$row = $this->_DB->getTopRow();

		$this->_User = new User();

	    $this->_User->setUniversityID ( $row['UniversityID']);

	    $this->_User->setFirstName( $row['FirstName']." ".$row['MiddleName']." ".$row['LastName'] );
	    
	    $DisciplineID = $row['DisciplineID'];
	    $SQL1 = "SELECT ShortCode FROM ums_discipline WHERE ID = '$DisciplineID'";

		$this->_DB->doQuery($SQL1);
		$row1 = $this->_DB->getTopRow();
	    $this->_User->setDiscipline ( $row1['ShortCode']);
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_User);

		return $Result;
	}
		//paying registration fee with object
	public function RegistrationPayment($RegistrationFee){
		
		$ID =$RegistrationFee->getID();
		var_dump($ID);
		$UniversityID=$RegistrationFee->getUniversityID();
		$Name=$RegistrationFee->getName();
		$Term =$RegistrationFee->getTerm();
		$Discipline =$RegistrationFee->getDiscipline();
		$Date =$RegistrationFee->getDate();
		$AdmissionFee =$RegistrationFee->getAdmissionFee();
		$PayBook =$RegistrationFee->getPayBook();
		$Security =$RegistrationFee->getSecurity();
		$Transportation =$RegistrationFee->getTransportation();
		$CourseRegistration =$RegistrationFee->getCourseRegistration();
		$Verification =$RegistrationFee->getVerification();
		$Retake =$RegistrationFee->getRetake();
		$ReRetake =$RegistrationFee->getReRetake();
		$Bncc =$RegistrationFee->getBncc();
		$Library =$RegistrationFee->getLibrary();
		$Medical =$RegistrationFee->getMedical();
		$Cultural =$RegistrationFee->getCultural();
		$ReligiousFee =$RegistrationFee->getReligiousFee();
		$ExaminationFee =$RegistrationFee->getExaminationFee();
		$SessionCharge =$RegistrationFee->getSessionCharge();
		$Gradesheet =$RegistrationFee->getGradesheet();
		$ProvisionalCertificate =$RegistrationFee->getProvisionalCertificate();
		$MainCertificate =$RegistrationFee->getMainCertificate();
		$Transcript =$RegistrationFee->getTranscript();
		$SecurityLibrary =$RegistrationFee->getSecurityLibrary();
		$EquivalenceCertificate =$RegistrationFee->getEquivalenceCertificate();
		$FineLibrary =$RegistrationFee->getFineLibrary();
		$FineRegistration =$RegistrationFee->getFineRegistration();
		$Mc_Mi =$RegistrationFee->getMc_Mi();
		$MphilPhd =$RegistrationFee->getMphilPhd();
		$StudentWelfare =$RegistrationFee->getStudentWelfare();
		$Sports =$RegistrationFee->getSports();
		$Publication =$RegistrationFee->getPublication();
		$Others =$RegistrationFee->getOthers();
		$SQL = "INSERT INTO pms_reg_fee VALUES('$ID','$UniversityID','$Name','$Term','$Discipline','$Date','$AdmissionFee','$PayBook','$Security','$Transportation','$CourseRegistration','$Verification','$Retake','$ReRetake','$Bncc','$Library','$Medical','$Cultural','$ReligiousFee','$ExaminationFee','$SessionCharge','$Gradesheet','$ProvisionalCertificate','$MainCertificate','$Transcript','$SecurityLibrary','$EquivalenceCertificate','$FineLibrary','$FineRegistration','$Mc_Mi','$MphilPhd','$StudentWelfare','$Sports','$Publication','$Others')";


		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;		
	}
}
?>