<?php
include_once UTILITY.'class.util.inc';
include_once MODULES_PAYMENT.'bao/class.registration_feebao.inc';
$_PaymentBAO = new PaymentBAO();
$_DB = DBUtil::getInstance();
$globalUser = '';
$globalUser = $_SESSION["globalUser"];
$User = new User();	
$User->setID($globalUser->getID());	
$getROW = $_PaymentBAO->getUserById($User)->getResultObject();
//setting batch from university id
$x = $getROW->getUniversityID();
$x = $x/10000;
$batch = intval($x);
/* saving the registration Payment Receipt*/
if(isset($_POST['save']))
{
	 $Question = new Question();	
	 $Question->setID(Util::getGUID());
     $Question->setTitle($_DB->secureInput($_POST['title']));
     $Question->setCourse($_DB->secureInput($_POST['course']));
     $Question->setTerm($_DB->secureInput($_POST['term']));
     $Question->setSession($_DB->secureInput($_POST['session']));
     $Question->setTeacher($_DB->secureInput($_POST['teacher']));
     $Question->setType($_DB->secureInput($_POST['type']));
     $Question->setTag($_DB->secureInput($_POST['tag']));
     $Question->setQuestionDate($_DB->secureInput($_POST['question_date']));
     $Question->setLink($_DB->secureInput($_POST['link']));
     $Question->setCreator($_POST['creator']);
     
     if ($Question->getCreator() == "") 	
     	echo "<br>Please Enter Creator";
     else 
	 	$_QuestionBAO->createQuestion($Question);		 
}
?>