<?php
	include_once("../includes/db_connect.php");
	include_once("../includes/functions.php");
	if($_REQUEST[act]=="save_customer")
	{
		save_customer();
		exit;
	}
	if($_REQUEST[act]=="delete_customer")
	{
		delete_customer();
		exit;
	}
	
	###Code for save customer#####
	function save_customer()
	{
		global $con;
		$R=$_REQUEST;		
		/////////////////////////////////////
		$image_name = $_FILES[customer_image][name];
		$location = $_FILES[customer_image][tmp_name];
		if($image_name!="")
		{
			move_uploaded_file($location,"../uploads/".$image_name);
		}
		else
		{
			$image_name = $R[avail_image];
		}				
		if($R[customer_id])
		{
			$statement = "UPDATE `customer` SET";
			$cond = "WHERE `customer_id` = '$R[customer_id]'";
			$msg = "Data Updated Successfully.";
		}
		else
		{
			$statement = "INSERT INTO `customer` SET";
			$cond = "";
			$msg="Data saved successfully.";
		}
		$SQL=   $statement." 
					`bike_name` = '$R[bike_name]', 
					`bike_type_id` = '$R[bike_type_id]', 
					`bike_company_id` = '$R[bike_company_id]', 
					`bike_price` = '$R[bike_price]', 
					`bike_image` = '$image_name',
					`bike_description` = '$R[bike_description]', 
					`bike_number` = '$R[bike_number]', 
					`bike_length` = '$R[bike_length]', 
					`bike_width` = '$R[bike_width]', 
					`bike_height` = '$R[bike_height]',  
					`bike_fuel_type` = '$R[bike_fuel_type]',
					`bike_displacement` = '$R[bike_displacement]',
					`bike_max_power` = '$R[bike_max_power]', 
					`bike_max_torque` = '$R[bike_max_torque]',
					`bike_milage` = '$R[bike_milage]',
					`bike_transmission_type` = '$R[bike_transmission_type]',
					`bike_front_tyre` = '$R[bike_front_tyre]',
					`bike_rear_tyre` = '$R[bike_rear_tyre]'".
				 $cond;
		$rs = mysqli_query($con,$SQL) or die(mysqli_error($con));
		header("Location:../customer-report.php?msg=$msg");
	}
#########Function for delete customer##########3
function delete_customer()
{	
	global $con;
	/////////Delete the record//////////
	$SQL="DELETE FROM customer WHERE customer_id = $_REQUEST[customer_id]";
	mysqli_query($con,$SQL) or die(mysqli_error($con));
	header("Location:../customer-report.php?msg=Deleted Successfully.");
}
?>
