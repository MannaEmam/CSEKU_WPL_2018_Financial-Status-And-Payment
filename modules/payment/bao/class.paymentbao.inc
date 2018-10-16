<?php

include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'dao/class.paymentdao.inc';
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
	//paying registration fee
	public function RegistrationPayment($RegistrationFee){
				$Result = new Result();	
		$Result = $this->_PaymentDAO->RegistrationPayment($RegistrationFee);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.RegistrationPayment()");		

		return $Result;
	}
	//RechargeAmount
	public function setRechargeAmount($Recharge){
				$Result = new Result();	
		$Result = $this->_PaymentDAO->setRechargeAmount($Recharge);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.RechargeAmount()");		

		return $Result;
	}
	//get Recharge Loog
	public function getRechargeLog(){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getRechargeLog();
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getRechargeLog()");		

		return $Result;
	}
}