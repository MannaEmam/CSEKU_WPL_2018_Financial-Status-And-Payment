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
		
		$ID =$this->_RegistrationFee->getID();
		$UniversityID=$this->_RegistrationFee->getUniversityID();
		$Name=$this->_RegistrationFee->getName();
		$Term =$this->_RegistrationFee->getTerm();
		$Discipline =$this->_RegistrationFee->getDiscipline();
		$Date =$this->_RegistrationFee->getDate();
		$AdmissionFee =$this->_RegistrationFee->getAdmissionFee();
		$PayBook =$this->_RegistrationFee->getPayBook();
		$Security =$this->_RegistrationFee->getSecurity();
		$Transportation =$this->_RegistrationFee->getTransportation();
		$CourseRegistration =$this->_RegistrationFee->getCourseRegistration();
		$Verification =$this->_RegistrationFee->getVerification();
		$Retake =$this->_RegistrationFee->getRetake();
		$ReRetake =$this->_RegistrationFee->getReRetake();
		$Bncc =$this->_RegistrationFee->getBncc();
		$Library =$this->_RegistrationFee->getLibrary();
		$Medical =$this->_RegistrationFee->getMedical();
		$Cultural =$this->_RegistrationFee->getCultural();
		$ReligiousFee =$this->_RegistrationFee->getReligiousFee();
		$ExaminationFee =$this->_RegistrationFee->getExaminationFee();
		$SessionCharge =$this->_RegistrationFee->getSessionCharge();
		$Gradesheet =$this->_RegistrationFee->getGradesheet();
		$ProvisionalCertificate =$this->_RegistrationFee->getProvisionalCertificate();
		$MainCertificate =$this->_RegistrationFee->getMainCertificate();
		$Transcript =$this->_RegistrationFee->getTranscript();
		$SecurityLibrary =$this->_RegistrationFee->getSecurityLibrary();
		$EquivalenceCertificate =$this->_RegistrationFee->getEquivalenceCertificate();
		$FineLibrary =$this->_RegistrationFee->getFineLibrary();
		$FineRegistration =$this->_RegistrationFee->getFineRegistration();
		$Mc_Mi =$this->_RegistrationFee->getMc_Mi();
		$MphilPhd =$this->_RegistrationFee->getMphilPhd();
		$StudentWelfare =$this->_RegistrationFee->getStudentWelfare();
		$Sports =$this->_RegistrationFee->getSports();
		$Publication =$this->_RegistrationFee->getPublication();
		$Others =$this->_RegistrationFee->getOthers();
		$SQL = "INSERT INTO pms_reg_fee VALUES('$ID','$UniversityID','$Name','$Term','$Discipline','$Date','$AdmissionFee','$PayBook','$Security','$Transportation','$CourseRegistration','$Verification','$Retake','$ReRetake','$Bncc','$Library','$Medical','$Cultural','$ReligiousFee','$ExaminationFee','$SessionCharge','$Gradesheet','$ProvisionalCertificate','$MainCertificate','$Transcript','$SecurityLibrary','$EquivalenceCertificate','$FineLibrary','$FineRegistration','$Mc_Mi','$MphilPhd','$StudentWelfare','$Sports','$Publication','$Others')";


		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;		
	}
}
?>