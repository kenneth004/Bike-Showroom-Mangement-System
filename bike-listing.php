<?php 
	include_once("includes/header.php"); 
	include_once("includes/db_connect.php"); 
	$SQL="SELECT * FROM bike, type, company WHERE type_id = bike_type_id AND company_id = bike_company_id";
	if($_REQUEST[company_id])
	{
		$SQL="SELECT * FROM bike, type, company WHERE type_id = bike_type_id AND company_id = bike_company_id AND bike_company_id = $_REQUEST[company_id]";
	}
	$rs=mysqli_query($con,$SQL) or die(mysqli_error($con));
?> 
<script>
function delete_bike(bike_id)
{
	if(confirm("Do you want to delete the bike?"))
	{
		this.document.frm_bike.bike_id.value=bike_id;
		this.document.frm_bike.act.value="delete_bike";
		this.document.frm_bike.submit();
	}
}
jQuery(document).ready(function() {
	jQuery('#mydatatable').DataTable();
});
</script>
	<div class="crumb">
    </div>
    <div class="clear"></div>
	<div id="content_sec">
		<div class="col1" style="width:100%">
		<div class="contact">
			<h4 class="heading colr">All Bikes</h4>
			<?php
			if($_REQUEST['msg']) { 
			?>
				<div class="msg"><?=$_REQUEST['msg']?></div>
			<?php
			}
			?>
			<form name="frm_bike" action="lib/bike.php" method="post">
				<div class="static">
					<table style="width:100%">
					<?php 
					$sr_no=1;
					while($data = mysqli_fetch_assoc($rs))
					{
					?>
					<tr>
						<td><a href="bike-details.php?bike_id=<?php echo $data[bike_id] ?>"><img src="<?=$SERVER_PATH.'uploads/'.$data[bike_image]?>" style="height:170px; width:150px"></a></td>
						<td style="vertical-align:top">
							<table border="0">
								<tr>
									<td class="tdheading">Name</th>
									<td><?=$data[bike_name]?></td>
								</tr>
								<tr>
									<td class="tdheading">Type</th>
									<td><?=$data[type_name]?></td>
								</tr>
								<tr>
									<td class="tdheading">Company</th>
									<td><?=$data[company_name]?></td>
								</tr>
								<tr>
									<td class="tdheading">Bike Price</th>
									<td><?=$data[bike_price]?></td>
								</tr>
								<tr>
									<td class="tdheading">Bike Description</th>
									<td><?=$data[bike_description]?></td>
								</tr>
								
								<tr>
									<td colspan="2" style="text-align:center; padding:12px;">
										<a href="bike-details.php?bike_id=<?php echo $data[bike_id] ?>" class="button-link">View Details</a>
										<?php if($_SESSION['user_details']['user_level_id'] == 1) {?>
											<a href="booking-listing.php?bike_id=<?php echo $data[bike_id] ?>" class="button-link">View Booking</a>
										<?php } ?>
									</td>
								</tr>
							</table>
						</td>
					</tr>
					<?php } ?>
					</table>
				</div>
				<input type="hidden" name="act" />
				<input type="hidden" name="bike_id" />
			</form>
		</div>
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
