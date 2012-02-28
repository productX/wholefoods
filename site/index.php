<?php
require_once("inc/master_inc.php");

//render_header();
$conn = get_db_conn();
$sql = "SELECT * FROM items ORDER BY item_type DESC";
$result = mysql_query($sql);
$i = 1;
?>
<style>

.title {
	font-size:32px;
	font-weight:bold;
	padding-top:35px;
}

.item_container{

	float:left;
	margin:20px;

}

.food_select{
	margin-top:30px; 
	font-weight:bold;
	font-size:45px;
}

.container {
	margin-top:30px; 
	font-weight:bold;
	font-size:35px;
}

.food {
	border: 9px solid white;
}

.selected {
	border: 9px solid blue;
	
}

.submit {
	background-color:green;
	color:white;
	font-size:35px;
	font-weight:bold;
	height: 120px;
	width: 480px;
	border: 3px solid #666;
	padding: 5px;
}


</style>

<head>
	<title>Whole Foods Delivery</title>
</head>
<div class="main">
	<div style="float:left;"><img src="images/wholefoods_logo.jpeg" height="100px" width="150px"/></div>
	<div class="title">Order Your Favorite Food from Whole Foods</div>
	<div class="body">

		<form name="order_form" method="post" action="send_order.php">
		<div class="size-choice">

			<center>
				<div style="margin-bottom:20px;">
					<div class="container"> Container Size </div>
						<input type="radio" name="size" value="Large" checked="true" /> Large<br/>
						<input type="radio" name="size" value="Small" /> Small </>
				</div>
			</center>

			<script>
				//This function selects and deselects items on the menu
				function set_select(select_id){
					var food_id = 'food' + select_id;
					if(document.getElementById(select_id).value == 'none'){
						document.getElementById(select_id).value = 'some';
						document.getElementById(food_id).className = "selected";
					}else{
						document.getElementById(food_id).className = "food";
						document.getElementById(select_id).value = 'none';

					}
				}
				function remove_select(select_id,quantity){
					var food_id = 'food' + select_id;
					if(quantity =='none'){
						document.getElementById(food_id).className = "food";
					}else{
						document.getElementById(food_id).className = "selected";
					}
				}
			</script>


			<center>
				<div style="margin-bottom:20px;">
					<div class="food_select"> Select Your Food </div>

						<?php //for all items in the food array grab the name and the url and present:
						while ($row = mysql_fetch_array($result)) {
							$item_number_name = "item" . $i . "_name";
							$item_number_quantity = "item" . $i . "_quantity";
							$image_url = "images/" . $row['item_url'];
							$food_id = "food" . $item_number_quantity;
?>
						<div class="item_container">
							<div id="<?php echo $food_id;?>" class="food"> <?php echo $row['item_name']; ?> <br/>
								<img src='<?php echo $image_url;?>' onclick="set_select('<?php echo $item_number_quantity;?>');" /><br/>
								<input name="<?php echo $item_number_name; ?>" type="hidden" value="<?php echo $row['item_name'];?>"/>
								<select id="<?php echo $item_number_quantity; ?>" name="<?php echo $item_number_quantity; ?>">
								<?php if($row['item_type'] == 'soup'){?>
									<option value="none" onclick="remove_select('<?php echo $item_number_quantity;?>', 'none');"> None </option>
									<option value="some" onclick="remove_select('<?php echo $item_number_quantity;?>', 'some');"> Small </option>
									<option value="large" onclick="remove_select('<?php echo $item_number_quantity;?>', 'large');"> Large </option>
								<?php
								}elseif($row['item_type'] == 'dressings and condiments'){?>
									<option value="none" onclick="remove_select('<?php echo $item_number_quantity;?>', 'none');"> None </option>
									<option value="some" onclick="remove_select('<?php echo $item_number_quantity;?>', 'some');"> Light </option>
									<option value="medium" onclick="remove_select('<?php echo $item_number_quantity;?>', 'medium');"> Medium </option>
									<option value="heavy" onclick="remove_select('<?php echo $item_number_quantity;?>', 'heavy');"> Heavy </option>
								<?php	
								}else{
								?>
									<option value="none" onclick="remove_select('<?php echo $item_number_quantity;?>', 'none');"> None </option>
									<option value="some" onclick="remove_select('<?php echo $item_number_quantity;?>', 'some');"> Some </option>
									<option value="ten grams" onclick="remove_select('<?php echo $item_number_quantity;?>', 'ten');">10 Gram </option>
									<option value="fifty grams" onclick="remove_select('<?php echo $item_number_quantity;?>', 'fifty');">50 Gram </option>
									<option value="one hundred grams" onclick="remove_select('<?php echo $item_number_quantity;?>', 'hundred');">100 Gram </option>
									<option value="two hundred grams" onclick="remove_select('<?php echo $item_number_quantity;?>', 'two_hundred');">200 Gram </option>
									<option value="three hundred grams" onclick="remove_select('<?php echo $item_number_quantity;?>', 'three_hundred');">300 Gram </option>
								<?php 
								}?>
								</select> 



							</div>
						</div>
						<?php $i++;
						} ?>
				</div>
			</center>
		</div><div style="clear:both;"/>
			<center><input class="submit" type="submit" value="Get Yummy Food Now" /></center>
		</form>
	</div>
</div>


<?php
//render_footer();

?>
