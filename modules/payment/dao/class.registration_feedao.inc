<?php
// write dao object for each class
include_once COMMON.'class.common.inc';
include_once COMMON.'class.common.payment.inc';
include_once COMMON.'class.common.user.inc';
include_once UTILITY.'class.util.inc';
Class PaymentDAO{

	private $_DB;
	private $_User;

	public function __construct(){

		$this->_DB = DBUtil::getInstance();
		$this->_User = new User();
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
	    // var_dump($DisciplineID);
	    $SQL1 = "SELECT ShortCode FROM ums_discipline WHERE ID = '$DisciplineID'";
	    // var_dump($SQL1);
		$this->_DB->doQuery($SQL1);
		$row1 = $this->_DB->getTopRow();
	    $this->_User->setDiscipline ( $row1['ShortCode']);
		$Result = new Result();
		$Result->setIsSuccess(1);
		$Result->setResultObject($this->_User);

		return $Result;
	}
}
?>