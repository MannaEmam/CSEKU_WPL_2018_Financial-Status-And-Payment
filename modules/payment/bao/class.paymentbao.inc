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
	public function setRegistrationPayment($RegistrationFee){
				$Result = new Result();	
		$Result = $this->_PaymentDAO->setRegistrationPayment($RegistrationFee);
		
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
	//get account details
	public function getAccountDetails($Account){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getAccountDetails($Account);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getAccountDetails()");		

		return $Result;
	}
//getting registration fee details by payment id
	public function getRegistrationFee($RegistrationFee){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getRegistrationFee($RegistrationFee);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getRegistrationFee()");		

		return $Result;
	}
	//get registration fee details by student id
	public function getRegistrationFeeBySid($RegistrationFee){
		$Result = new Result();	
		$Result = $this->_PaymentDAO->getRegistrationFeeBySid($RegistrationFee);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getRegistrationFeeBySid()");		

		return $Result;
	}
	public function setPaymentType($PaymentType){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->setPaymentType($PaymentType);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.setPaymentType()");		

		return $Result;
	}
		public function getPaymentType($User){

		$Result = new Result();	
		$Result = $this->_PaymentDAO->getPaymentType($User);
		
		if(!$Result->getIsSuccess())
			$Result->setResultObject("Database failure in PaymentDAO.getPaymentType()");		

		return $Result;
	}
}