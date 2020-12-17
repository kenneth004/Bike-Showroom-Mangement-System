<?php 
	include_once("includes/header.php"); 
	if($_REQUEST[bike_id])
	{
		$SQL="SELECT * FROM bike WHERE bike_id = $_REQUEST[bike_id]";
		$rs=mysqli_query($con,$SQL) or die(mysqli_error($con));
		$data=mysqli_fetch_assoc($rs);
	}
?> 
<script>
jQuery(function() {
	jQuery( "#bike_length" ).datepicker({
	  changeMonth: true,
	  changeYear: true,
	   yearRange: "-25:-10",
	   dateFormat: 'd MM,yy'
	});
});
</script>
<style>
ul.forms {
    float: left;
    list-style: none;
    padding: 0px 0px 10px 0px;
    width: 290px;
}
</style>

	<div class="crumb">
    </div>
    <div class="clear"></div>
	<div id="content_sec">
		<div class="col1">
			<div class="contact">
				<h4 class="heading colr"><?=$heading?>Add Bike</h4>
				<?php
				if($_REQUEST['msg']) { 
				?>
				<div class="msg"><?=$_REQUEST['msg']?></div>
				<?php
				}
				?>
				<form action="lib/bike.php" enctype="multipart/form-data" method="post" name="frm_bike">
					<ul class="forms">
						<li class="txt">Bike Name</li>
						<li class="inputfield"><input name="bike_name" id="bike_name" type="text" class="bar" required value="<?=$data[bike_name]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Type</li>
						<li class="inputfield">
							<select name="bike_type_id" class="bar" required/>
								<?php echo get_new_optionlist("type","type_id","type_name",$data[bike_type_id]); ?>
							</select>
						</li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Company</li>
						<li class="inputfield">
							<select name="bike_company_id" class="bar" required/>
								<?php echo get_new_optionlist("company","company_id","company_name",$data[bike_company_id]); ?>
							</select>
						</li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Price</li>
						<li class="inputfield"><input name="bike_price" id="bike_price" type="text" class="bar" required value="<?=$data[bike_price]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Number</li>
						<li class="inputfield"><input name="bike_number" id="bike_number" type="text" class="bar" required value="<?=$data[bike_number]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Length</li>
						<li class="inputfield"><input name="bike_length" id="bike_length" type="text" class="bar" required value="<?=$data[bike_length]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Width</li>
						<li class="inputfield"><input name="bike_width" id="bike_width" type="text" class="bar" required value="<?=$data[bike_width]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Height</li>
						<li class="inputfield"><input name="bike_height" id="bike_height" type="text" class="bar" required value="<?=$data[bike_height]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Fuel Type</li>
						<li class="inputfield"><input name="bike_fuel_type" id="bike_fuel_type" type="text" class="bar" required value="<?=$data[bike_fuel_type]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Displacement</li>
						<li class="inputfield"><input name="bike_displacement" id="bike_displacement" type="text" class="bar" required value="<?=$data[bike_displacement]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Max Power</li>
						<li class="inputfield"><input name="bike_max_power" id="bike_max_power" type="text" class="bar" required value="<?=$data[bike_max_power]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Max Torque</li>
						<li class="inputfield"><input name="bike_max_torque" id="bike_max_torque" type="text" class="bar" required value="<?=$data[bike_max_torque]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Milage</li>
						<li class="inputfield"><input name="bike_" id="bike_" type="text" class="bar" required value="<?=$data[bike_]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Number of Gears</li>
						<li class="inputfield"><input name="bike_no_of_gears" id="bike_no_of_gears" type="text" class="bar" required value="<?=$data[bike_no_of_gears]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Front Tyre</li>
						<li class="inputfield"><input name="bike_front_tyre" id="bike_front_tyre" type="text" class="bar" required value="<?=$data[bike_front_tyre]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Rear Tyre</li>
						<li class="inputfield"><input name="bike_rear_tyre" id="bike_rear_tyre" type="text" class="bar" required value="<?=$data[bike_rear_tyre]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Bike Address</li>
						<li class="inputfield"><input name="bike_address" id="bike_address" type="text" class="bar" required value="<?=$data[bike_address]?>"/></li>
					</ul>
					<ul class="forms">
						<li class="txt">Image</li>
						<li class="inputfield"><input name="bike_image" type="file" class="bar"/></li>
					</ul>
					<div style="clear:both"></div>
					<ul class="forms">
						<li class="txt">&nbsp;</li>
						<li class="textfield"><input type="submit" value="Submit" class="simplebtn"></li>
						<li class="textfield"><input type="reset" value="Reset" class="resetbtn"></li>
					</ul>
					<input type="hidden" name="act" value="save_bike">
					<input type="hidden" name="avail_image" value="<?=$data[bike_image]?>">
					<input type="hidden" name="bike_id" value="<?=$data[bike_id]?>">
				</form>
			</div>
		</div>
		<div class="col2">
			<?php include_once("includes/sidebar.php"); ?> 
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
