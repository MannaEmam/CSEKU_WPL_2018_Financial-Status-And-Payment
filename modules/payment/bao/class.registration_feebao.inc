<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'dao/class.registration_feedao.inc';
Class PaymentBAO{

	private $_DB;
	private $_PaymentDAO;

	public function __construct(){

		$this->_PaymentDAO = new PaymentDAO();

	}

	//get all Questions
	public function getUserById($User){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getUserById($User);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in QuestionDAO.getAllQuestions()");		

		return $Result;
	}
}