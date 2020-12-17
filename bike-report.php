<?php 
	include_once("includes/header.php"); 
	include_once("includes/db_connect.php"); 
	$SQL="SELECT * FROM `bike`, `type`, `company` WHERE type_id = bike_type_id AND company_id = bike_company_id";
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
			<h4 class="heading colr">Bike Report</h4>
			<?php
			if($_REQUEST['msg']) { 
			?>
				<div class="msg"><?=$_REQUEST['msg']?></div>
			<?php
			}
			?>
			<form name="frm_bike" action="lib/bike.php" method="post">
				<div class="static">
				<table class="table table-striped table-advance table-hover"  id="mydatatable" style="color:#000000">
					<thead>
						<tr class="tablehead bold">
						<td scope="col">ID</td>
						<td scope="col">Image</td>
						<td scope="col">Bike Name</td>
						<td scope="col">Bike Type</td>
						<td scope="col">Company</td>
						<td scope="col">Bike Price</td>
						<td scope="col">Description</td>								
						<td scope="col">Action</td>
						</tr>
					</thead>
					<tbody>
					<?php 
					$sr_no=1;
					while($data = mysqli_fetch_assoc($rs))
					{
					?>
					  <tr>
						<td><?=$data[bike_id]?></td>
						<td>
						<a href="bike-details.php?bike_id=<?php echo $data[bike_id] ?>"><img src="<?=$SERVER_PATH.'uploads/'.$data[bike_image]?>" style="heigh:50px; width:50px"></a></td>
						<td><?=$data[bike_name]?></td>
						<td><?=$data[type_name]?></td>
						<td><?=$data[company_name]?></td>
						<td><?=$data[bike_price]?></td>
						<td><?=$data[bike_description]?></td>
						<td style="text-align:center">
							<a href="bike.php?bike_id=<?php echo $data[bike_id] ?>">Edit</a> | <a href="Javascript:delete_bike(<?=$data[bike_id]?>)">Delete</a> 
						</td>
						</td>
					  </tr>
					<?php } ?>
					</tbody>
					</table>
				</div>
				<input type="hidden" name="act" />
				<input type="hidden" name="bike_id" />
			</form>
		</div>
		</div>
	</div>
<?php include_once("includes/footer.php"); ?> 
