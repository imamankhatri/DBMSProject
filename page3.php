<?php
	session_start();

	$db = mysqli_connect('localhost','root','','mdbms')
 	or die('Error connecting to MySQL server.');

	if(isset($_POST['submit']))
		echo "successful";
	//$id=$_POST['M_ID'] or die('i died here');
	//$ibno=$_SESSION['sbno'];
	$q="SELECT MAX(BILL_NO) FROM bill ";
  $result1 = mysqli_query($db,$q) or die ('dead');
  $row1 = mysqli_fetch_array($result1) or die ('dead2');
  $bno = $row1[0] or die ('dead3');

	$cname = $_SESSION['sname'];

	$fc=0;
	$getinfo ="SELECT q.med_id,m.med_name,m.cost,q.quantity,q.cost from medicines m,qty_med q where m.med_id=q.med_id and q.bno=$bno";
	$result = mysqli_query($db, $getinfo);


	$select2 ="UPDATE BILL SET PRICE=$fc WHERE BILL_NO = $bno";
	$db->query($select2);
?>

<html>
<head>
	<title>Medicine store</title>

	<style>
	body{
		color: white;
		background-image: url("image1.jpg");
		background-repeat: no-repeat;
		background-size: 100%;
		font-size: 20px
	     }
	button{
    			background-color: background-color: #e7e7e7;
    			border: none;
    			color: black;
    			padding: 15px 32px;
    			text-align: center;
    			text-decoration: none;
    			display: inline-block;
    			font-size: 16px;
		}
	</style>

	<center><h1> BILL </h1></center>
<body>
<center>
	<br><br><br><br>
<table border=2 bordercolor=white>
	<tr>
		<td>Bill no :</td>
		<td><?php echo $bno ?></td>
		<td>Customer Name :</td>
		<td><?php echo $cname ?></td>

	</tr>
	<br>
	<tr><td>EMP_ID</td><td>EMP_NAME</td><td>EMP_PHONE</td><td>EMP_ADDRESS</td><td>EMP_SALARY</td></tr>

<?php
if($result->num_rows>0)
		{
			 while ($row = mysqli_fetch_array($result)) {
?>

       <tr><td><?php echo $row[0]?></td><td><?php echo $row[1]?></td><td><?php echo $row[2]?></td><td><?php echo $row[3]?></td><td><?php echo $row[4]?></td></tr>
<?php
			 $fc=$fc+$row[4];
		 }
?>

<?php } ?>



	<tr>
		<td>final cost :</td>
		<td><?php echo $fc ?></td>
	</tr>
</table>
<br><br>
	<a href="home.html"><button>GO BACK TO HOME</button></a>
</center>
</body>
</html>
