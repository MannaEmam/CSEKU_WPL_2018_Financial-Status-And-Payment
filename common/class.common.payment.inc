<?php

class RegistrationFee {

    private $_ID;
    private $_UniversityID;
    private $_Batch;
    private $_Date;
    private $AccountNumber;
    private $_AdmissionFee;
    private $_PayBook;
    private $_Security;
    private $_Transportation;
    private $_CourseRegistration;
    private $_Verification;
    private $_Retake;
    private $_ReRetake;
    private $_Bncc;
    private $_Library;
    private $_Medical;
    private $_Cultural;
    private $_ReligiousFee;
    private $_ExaminationFee;
    private $_SessionCharge;
    private $_Gradesheet;
    private $_ProvisionalCertificate;
    private $_MainCertificate;
    private $_Transcript;
    private $_SecurityLibrary;
    private $_EquivalenceCertificate;
    private $_FineLibrary;
    private $_FineRegistration;
    private $_Mc_Mi;
    private $_MphilPhd;
    private $_StudentWelfare;
    private $_Sports;
    private $_Publication;
    private $_Others;
    
    public function setID($ID){
        $this->_ID = $ID;
    }
    public function getID(){
        return $this->_ID;
    }
    public function setUniversityID($UniversityID){
        $this->_UniversityID = $UniversityID;
    }
    public function getUniversityID(){
        return $this->_Creator;
    }
    public function setBatch($Batch){
        $this->_Batch = $Batch;
    }
    public function getBatch(){
        return $this->_Batch;
    }
    public function setDate($Date){
        $this->_Date = $Date;
    }
    public function getDate(){
        return $this->_Date;
    }
    public function setAccountNumber($AccountNumber){
        $this->_AccountNumber = $AccountNumber;
    }
    public function getAccountNumber(){
        return $this->_AccountNumber;
    }    
    public function setAdmissionFee($AdmissionFee){
        $this->_AdmissionFee = $AdmissionFee;
    }
    public function getAdmissionFee(){
        return $this->_AdmissionFee;
    }
    public function setPayBook($PayBook){
        $this->_PayBook = $PayBook;
    }
    public function getPayBook(){
        return $this->_PayBook;
    }
}

?>
