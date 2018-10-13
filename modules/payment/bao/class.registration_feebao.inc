<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'dao/class.registration_feedao.inc';
Class PaymentBAO{

	private $_DB;
	private $_PaymentDAO;

	public function __construct(){

		$this->_PaymentDAO = new PaymentDAO();

	}

	//get user by id
	public function getUserById($User){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getUserById($User);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getUserById($User)");		

		return $Result;
	}
}