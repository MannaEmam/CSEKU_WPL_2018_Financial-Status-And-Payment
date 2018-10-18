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
	public function setRegistrationPayment($RegistrationFee){
		
		$ID =$RegistrationFee->getID();
		$UniversityID=$RegistrationFee->getUniversityID();
		$Batch =$RegistrationFee->getBatch();
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
		$Total =$RegistrationFee->getTotal();

		$SQL = "INSERT INTO pms_reg_fee VALUES('$ID','$UniversityID', '$Batch' ,'$Name','$Email','$Term','$Discipline','$Date','$AdmissionFee','$PayBook','$Security','$Transportation','$CourseRegistration','$Verification','$Retake','$ReRetake','$Bncc','$Library','$Medical','$Cultural','$ReligiousFee','$ExaminationFee','$SessionCharge','$Gradesheet','$ProvisionalCertificate','$MainCertificate','$Transcript','$SecurityLibrary','$EquivalenceCertificate','$FineLibrary','$FineRegistration','$Mc_Mi','$MphilPhd','$StudentWelfare','$Sports','$Publication','$Others','$Total')";


		$SQL = $this->_DB->doQuery($SQL);
		//updating balance after paying fee

		$SQL2 = "SELECT Amount FROM pms_recharge WHERE Email='$Email'";
		$SQL2 = $this->_DB->doQuery($SQL2);
		$row = $this->_DB->getTopRow();

			$amount = $row['Amount'] - $Total;
			$SQL3 = "UPDATE pms_recharge SET Amount ='$amount'";
			$SQL3 = $this->_DB->doQuery($SQL3);

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

		//getting account information using email id
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

	//get account details by email
		public function getAccountDetails($Account){
		$Email = $Account->getEmail();
		$SQL = "SELECT * FROM pms_recharge WHERE Email='$Email'";
		
		$this->_DB->doQuery($SQL);

		$row = $this->_DB->getTopRow();
		$this->_Recharge = new Recharge();

	    $this->_Recharge->setDate ( $row['Date']);
	    $this->_Recharge->setEmail ( $row['Email']);
	    $this->_Recharge->setAmount ( $row['Amount']);

		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_Recharge);

		return $Result;
	}
	/*
	public function getRegistrationPayment(xx){
		$SQL = 
		$this->_DB->doQuery($SQL);
		$row = $this->_DB->getTopRow();

		$this->_RegistrationFee = new RegistrationFee();

		$this->_RegistrationFee->setID ( $row['ID']);	    	
		$this->_RegistrationFee->setUniversityID ( $row['UniversityID']);
		$this->_RegistrationFee->setBatch ( $row['Batch']);
		$this->_RegistrationFee->setName ( $row['Name']);
		$this->_RegistrationFee->setEmail ( $row['Email']);
		$this->_RegistrationFee->setTerm ( $row['Term']);
		$this->_RegistrationFee->setDiscipline ( $row['Discipline']);
		$this->_RegistrationFee->setDate ( $row['Date']);
		$this->_RegistrationFee->setAdmissionFee ( $row['AdmissionFee']);
		$this->_RegistrationFee->setPayBook ( $row['PayBook']);
		$this->_RegistrationFee->setSecurity ( $row['Security']);
		$this->_RegistrationFee->setTransportation ( $row['Transportation']);
		$this->_RegistrationFee->setCourseRegistration ( $row['CourseRegistration']);
		$this->_RegistrationFee->setVerification ( $row['Verification']);
		$this->_RegistrationFee->setRetake ( $row['Retake']);
		$this->_RegistrationFee->setReRetake ( $row['ReRetake']);
		$this->_RegistrationFee->setBncc ( $row['Bncc']);
		$this->_RegistrationFee->setLibrary ( $row['Library']);
		$this->_RegistrationFee->setMedical ( $row['Medical']);
		$this->_RegistrationFee->setCultural ( $row['Cultural']);
		$this->_RegistrationFee->setReligiousFee ( $row['ReligiousFee']);
		$this->_RegistrationFee->setExaminationFee ( $row['ExaminationFee']);
		$this->_RegistrationFee->setSessionCharge ( $row['SessionCharge']);
		$this->_RegistrationFee->setGradesheet ( $row['Gradesheet']);
		$this->_RegistrationFee->setProvisionalCertificate ( $row['ProvisionalCertificate']);
		$this->_RegistrationFee->setMainCertificate ( $row['MainCertificate']);
		$this->_RegistrationFee->setTranscript ( $row['Transcript']);
		$this->_RegistrationFee->setSecurityLibrary ( $row['SecurityLibrary']);
		$this->_RegistrationFee->setEquivalenceCertificate ( $row['EquivalenceCertificate']);
		$this->_RegistrationFee->setFineLibrary ( $row['FineLibrary']);
		$this->_RegistrationFee->setFineRegistration ( $row['FineRegistration']);
		$this->_RegistrationFee->setMc_Mi ( $row['Mc_Mi']);
		$this->_RegistrationFee->setMphilPhd ( $row['MphilPhd']);
		$this->_RegistrationFee->setStudentWelfare ( $row['StudentWelfare']);
		$this->_RegistrationFee->setSports ( $row['Sports']);
		$this->_RegistrationFee->setPublication ( $row['Publication']);
		$this->_RegistrationFee->setOthers ( $row['Others']);
		$this->_RegistrationFee->setTotal ( $row['Total']);

	 	$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);

		return $Result;		
	}
	*/
		public function setPaymentType($PaymentType){
		$ID =$PaymentType->getID();
		$PID =$PaymentType->getPID();		
		$UniversityID=$PaymentType->getUniversityID();
		$Type=$PaymentType->getType();
		$Date=$PaymentType->getDate();
		$SQL = "INSERT pms_payment_type VALUES('$ID', '$PID' ,'$UniversityID','$Type','$Date')";
		$SQL = $this->_DB->doQuery($SQL);
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($SQL);
		return $Result;
	}
}
?>