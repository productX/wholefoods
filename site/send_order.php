<?php
require_once("inc/master_inc.php");

//render_header();
$conn = get_db_conn();
$sql = "SELECT * FROM items ORDER BY item_type DESC";
$result = mysql_query($sql);
$i = 1;


$email = array();
$email[] = $_POST['size'];
for($i=1;$i<149;$i++){
$item_quantity = "item" . $i . "_quantity";  
$item_name = "item" . $i . "_name";  

	if($_POST[$item_quantity] != 'none'){
		$email[] = $_POST[$item_name];
		$email[] = $_POST[$item_quantity];
	}
}

$body = "Size \n";
foreach($email as $datum){
	$body .= $datum . "\n";
}


$to = "badamgries@gmail.com";
$subject = "Delivery Order for 1813 Greenwich";
$headers = 'From: Whole Foods Delivery SF <orders@wholefoodsdeliverysf.com>';
  if (mail($to, $subject, $body, $headers)) {
     echo("<p>Order successfully sent!</p> <p>You will be eating yumminess soon!</p>");
       } else {
  echo("<p>Message delivery failed...</p>");
}

?>






