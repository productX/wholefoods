<?php
require_once("inc/master_inc.php");
require_once("../../common/include/functions.php");

$db = Database::init("localhost", "root", "", "wholefoods");

$itemSetID = null;
if(isset($_POST['newTemplate']) && $_POST['newTemplate']!="") {
	$db->doQuery("INSERT INTO item_sets (label) VALUES (%s)", $_POST['newTemplate']);
	$itemSetID = mysql_insert_id();
}

$rs = $db->doQuery("SELECT * FROM items ORDER BY item_type DESC");

$email = array();
$email[] = $_POST['size'];
$obj = null;
while($obj=mysql_fetch_object($rs)) {
	$i = $obj->id;
	$item_quantity = "item" . $i . "_quantity";  
	$item_name = "item" . $i . "_name";  
	if($_POST[$item_quantity] != 'none') {
		$email[] = $_POST[$item_name];
		$email[] = $_POST[$item_quantity];
		
		if(!is_null($itemSetID)) {
			$db->doQuery("INSERT INTO item_set_items (item_set_id, item_id, quantity) VALUES (%s, %s, %s)",$itemSetID, $i, $_POST[$item_quantity]);
		}
	}
}

$body = "Size \n";
foreach($email as $datum){
	$body .= $datum . "\n";
}

$to = "adamgries@gmail.com";
$subject = "Delivery Order for 1813 Greenwich";
$headers = 'From: Whole Foods Delivery SF <orders@wholefoodsdeliverysf.com>';
//if(mail($to, $subject, $body, $headers)) {
echo $body."<br/>";
if(true) {
	echo("<p>Order successfully sent!</p> <p>You will be eating yumminess soon!</p>");
} 
else {
	echo("<p>Message delivery failed...</p>");
}

?>
