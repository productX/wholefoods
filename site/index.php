<?php
require_once("inc/master_inc.php");
require_once("../../common/include/functions.php");

//render_header();
$conn = get_db_conn();
$sql = "SELECT * FROM items ORDER BY item_type DESC";
$result = mysql_query($sql);
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
					<table><tr>
						<td>
							<div class="container">Container Size</div>
							<input type="radio" name="size" value="Large" checked="true">Large</input><br/>
							<input type="radio" name="size" value="Small">Small</input>
						</td>
						<td width="40" />
						<td>
							<div class="container">Use Template</div>
							<select id="templateSelect" onchange="set_item_set();">
								<option value="none" selected> </option>
								<?php
								$rs = mysql_query("SELECT * FROM item_sets");
								$obj = null;
								$jsItemSetStr = "";
								while($obj = mysql_fetch_object($rs)) {
									$label = $obj->label;
									$id = $obj->id;
									
									$jsItemSetStr .= "if(item_set_id=='$id') {";
									$rs2 = mysql_query("SELECT item_id, quantity FROM item_set_items WHERE item_set_id=$id");
									$obj2 = null;
									while($obj2 = mysql_fetch_object($rs2)) {
										$jsItemSetStr .= "set_select_by_id('$obj2->item_id', '$obj2->quantity');";
									}
									$jsItemSetStr .= "}";
								?>
								<option value="<?php echo $id; ?>"><?php echo $label; ?></option>
								<?php
								}
								?>
							</select>
						</td>
					</tr></table>
				</div>
			</center>

			<script>
				function set_item_set() {
					var item_set_id = document.getElementById("templateSelect").value;
					clear_all();
					<?php echo $jsItemSetStr; ?>
				}
				function toggle_select(select_id) {
					if(document.getElementById(select_id).value == 'none'){
						set_select(select_id, "some");
					}
					else {
						set_select(select_id, "none");
					}
				}
				function set_select_by_id(id, quantity) {
					var select_id = 'item'+id+'_quantity';
					set_select(select_id, quantity);
				}
				function set_select(select_id, quantity) {
					document.getElementById(select_id).value = quantity;
					set_highlight(select_id, quantity);
				}
				function select_change(select_id) {
					quantity = document.getElementById(select_id).value;
					set_highlight(select_id, quantity);
				}
				function set_highlight(select_id, quantity) {
					var food_id = 'food' + select_id;
					if(quantity =='none'){
						document.getElementById(food_id).className = "food";
					}
					else {
						document.getElementById(food_id).className = "selected";
					}
				}
			</script>

			<center>
				<div style="margin-bottom:20px;">
					<div class="food_select"> Select Your Food </div>
						<?php //for all items in the food array grab the name and the url and present:
						$jsClearAllStr = "";
						while ($row = mysql_fetch_array($result)) {
							$i = $row['id'];
							$jsClearAllStr .= "set_select_by_id($i, 'none');";
							$item_number_name = "item" . $i . "_name";
							$item_number_quantity = "item" . $i . "_quantity";
							$image_url = "images/" . $row['item_url'];
							$food_id = "food" . $item_number_quantity;
?>
						<div class="item_container">
							<div id="<?php echo $food_id;?>" class="food"> <?php echo $row['item_name']; ?> <br/>
								<img src='<?php echo $image_url;?>' onclick="toggle_select('<?php echo $item_number_quantity;?>');" /><br/>
								<input name="<?php echo $item_number_name; ?>" type="hidden" value="<?php echo $row['item_name'];?>"/>
								<select id="<?php echo $item_number_quantity; ?>" name="<?php echo $item_number_quantity; ?>" onchange="select_change('<?php echo $item_number_quantity;?>');">
								<?php
								if($row['item_type'] == 'soup'){
								?>
									<option value="none"> None </option>
									<option value="some"> Small </option>
									<option value="large"> Large </option>
								<?php
								}
								elseif($row['item_type'] == 'dressings and condiments'){
								?>
									<option value="none"> None </option>
									<option value="some"> Light </option>
									<option value="medium"> Medium </option>
									<option value="heavy"> Heavy </option>
								<?php	
								}
								else{
								?>
									<option value="none"> None </option>
									<option value="some"> Some </option>
									<option value="ten grams">10 Gram </option>
									<option value="fifty grams">50 Gram </option>
									<option value="one hundred grams">100 Gram </option>
									<option value="two hundred grams">200 Gram </option>
									<option value="three hundred grams">300 Gram </option>
								<?php 
								}
								?>
								</select> 
							</div>
						</div>
						<?php
						} ?>
				</div>
			</center>
			<script>
				function clear_all() {
					<?php echo $jsClearAllStr; ?>
				}			
			</script>
		</div>
		<div style="clear:both;"/>
		<center><table width="700px"><tr>
			<td>
				Your name:<br/>
				<input type="text" name="userName" />
				Save as new template (optional):<br/>
				<input type="text" name="newTemplate" />
			</td>
			<td width="40" />
			<td>
				<center><input class="submit" type="submit" value="Get Yummy Food Now" /></center>
			</td>
		</tr></table></center>
		</form>
	</div>
</div>


<?php
//render_footer();

?>
