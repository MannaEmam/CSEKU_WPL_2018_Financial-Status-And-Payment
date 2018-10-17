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
	private $_Recharge;

	public function __construct(){

		$this->_DB = DBUtil::getInstance();
		$this->_User = new User();
		$this->_RegistrationFee = new RegistrationFee();
		$this->_Recharge = new Recharge();
	}
	public function getUserById($User){
		$ID = $User->getID();

		$SQL = "SELECT UniversityID,FirstName,MiddleName,LastName,DisciplineID,Email FROM ums_user WHERE ID = '$ID'";
		
		$this->_DB->doQuery($SQL);

		$row = $this->_DB->getTopRow();

		$this->_User = new User();

	    $this->_User->setUniversityID ( $row['UniversityID']);
	    $this->_User->setEmail ( $row['Email']);

	    $this->_User->setFirstName( $row['FirstName']." ".$row['MiddleName']." ".$row['LastName'] );
	    
	    $DisciplineID = $row['DisciplineID'];
	    $SQL1 = "SELECT Name FROM ums_discipline WHERE ID = '$DisciplineID'";

		$this->_DB->doQuery($SQL1);
		$row1 = $this->_DB->getTopRow();
	    $this->_User->setDiscipline ( $row1['Name']);
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_User);

		return $Result;
	}
		//paying registration fee with object
	public function RegistrationPayment($RegistrationFee){
		
		$ID =$RegistrationFee->getID();
		$UniversityID=$RegistrationFee->getUniversityID();
		$Name=$RegistrationFee->getName();
		$Email=$RegistrationFee->getEmail();
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
		$SQL = "INSERT INTO pms_reg_fee VALUES('$ID','$UniversityID','$Name','$Email','$Term','$Discipline','$Date','$AdmissionFee','$PayBook','$Security','$Transportation','$CourseRegistration','$Verification','$Retake','$ReRetake','$Bncc','$Library','$Medical','$Cultural','$ReligiousFee','$ExaminationFee','$SessionCharge','$Gradesheet','$ProvisionalCertificate','$MainCertificate','$Transcript','$SecurityLibrary','$EquivalenceCertificate','$FineLibrary','$FineRegistration','$Mc_Mi','$MphilPhd','$StudentWelfare','$Sports','$Publication','$Others')";


		$SQL = $this->_DB->doQuery($SQL);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;		
	}

	//Recharge Amount
	public function setRechargeAmount($Recharge){
		
		$ID =$Recharge->getID();
		$Date =$Recharge->getDate();
		$Email=$Recharge->getEmail();
		$Amount=$Recharge->getAmount();

		//
		$SQL2 = "SELECT Amount FROM pms_recharge WHERE Email='$Email'";
		$SQL2 = $this->_DB->doQuery($SQL2);
		$row = $this->_DB->getTopRow();
		if(is_null($row['Amount']))
		{
		$SQL = "INSERT INTO pms_recharge VALUES('$ID','$Date','$Email','$Amount')";


		$SQL = $this->_DB->doQuery($SQL);
		}

		else
		{
			$amount = $Amount + $row['Amount'];
			$SQL3 = "UPDATE pms_recharge SET Amount ='$amount'";
			$SQL3 = $this->_DB->doQuery($SQL3);
		}

		//inserting data for recharge log
		$SQL1 = "INSERT INTO  pms_recharge_log (`Date`, Email, Amount) VALUES('$Date','$Email','$Amount')";


		$SQL1 = $this->_DB->doQuery($SQL1);		
		
	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL1);

		return $Result;		
	}
	//get recharge log
	public function getRechargeLog(){

		$LogList = array();

		$this->_DB->doQuery("SELECT * FROM pms_recharge_log ORDER BY ID DESC");

		$rows = $this->_DB->getAllRows();

		for($i = 0; $i < sizeof($rows); $i++) {
			$row = $rows[$i];
			$this->_Recharge = new Recharge();

		    $this->_Recharge->setID ( $row['ID']);
			$this->_Recharge->setDate ( $row['Date']);
		    $this->_Recharge->setEmail ( $row['Email']);
			$this->_Recharge->setAmount ( $row['Amount']);
		    $LogList[]=$this->_Recharge;
   
		}

		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($LogList);

		return $Result;
	}
}
?>