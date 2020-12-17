<?php 
	include_once("includes/header.php"); 
	if($_REQUEST[bike_id])
	{
		$SQL="SELECT * FROM bike, type, company WHERE type_id = bike_type_id AND company_id = bike_company_id AND bike_id = $_REQUEST[bike_id]";
		$rs=mysqli_query($con,$SQL) or die(mysqli_error($con));
		$data=mysqli_fetch_assoc($rs);
	}
?> 

	<div class="crumb">
    </div>
    <div class="clear"></div>
	<div id="content_sec">
		<div class="col1">
			<div class="contact">
				<h4 class="heading colr"><?=$data[bike_name]?> Bike Details</h4>
				<?php
				if($_REQUEST['msg']) { 
				?>
				<div class="msg"><?=$_REQUEST['msg']?></div>
				<?php
				}
				?>
				<div id="myrow">
					
				<table>
		
						<tr>
							<th>Bike Name</th>
							<td><?=$data[bike_name]?></td>
						</tr>
						<tr>
							<th>Bike Type</th>
							<td><?=$data[type_name]?></td>
						</tr>
						<tr>
							<th>Bike Company</th>
							<td><?=$data[company_name]?></td>
						</tr>
						<tr>
							<th>Bike Price</th>
							<td><?=$data[bike_price]?></td>
						</tr>
						<tr>
							<th>Bike Number</th>
							<td><?=$data[bike_number]?></td>
						</tr>
						<tr>
							<th>Bike Length</th>
							<td><?=$data[bike_length]?></td>
						</tr>
						<tr>
							<th>Bike Width</th>
							<td><?=$data[bike_width]?></td>
						</tr>
						<tr>
							<th>Bike Height</th>
							<td><?=$data[bike_height]?></td>
						</tr>
						<tr>
							<th>Bike Fuel Type</th>
							<td><?=$data[bike_fuel_type]?></td>
						</tr>
						<tr>
							<th>Bike Displacement</th>
							<td><?=$data[bike_displacement]?></td>
						</tr>
						<tr>
							<th>Bike Max Power</th>
							<td><?=$data[bike_max_power]?></td>
						</tr>
						<tr>
							<th>Bike Max Torque</th>
							<td><?=$data[bike_max_torque]?></td>
						</tr>
						<tr>
							<th>Bike Milage</th>
							<td><?=$data[bike_milage]?></td>
						</tr>
						<tr>
							<th>Bike Front Tyre</th>
							<td><?=$data[bike_front_tyre]?></td>
						</tr>
						<tr>
							<th>Bike Rear Tyre</th>
							<td><?=$data[bike_rear_tyre]?></td>
						</tr>
						<tr>
							<th>Bike Description</th>
							<td><?=$data[bike_description]?></td>
						</tr>
						
					</table>
			</div>
			</div>
		</div>
		<div class="col2">
			<h4 class="heading colr">Bike <?=$data['bike_name']?></h4>
			<div><img src="<?=$SERVER_PATH.'uploads/'.$data[bike_image]?>" style="width: 250px"></div><br>
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
