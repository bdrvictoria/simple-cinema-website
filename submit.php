<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "id4637639_cinemadb";

// Create connection
$conn = new mysqli($servername, $username, $password, $dbname);
// Check connection
if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 
$seatnumber = $_GET['seat'];
$row = (floor($seatnumber/5) + 1) + ($_GET['movie'] - 1) * 5;
$seat = $seatnumber%5;
$seatstring = "";
if ($seat == 1){
	$seatstring = "one";
}
if ($seat == 2){
	$seatstring = "two";
}
if ($seat == 3){
	$seatstring = "three";
}
if ($seat == 4){
	$seatstring = "four";
}
if ($seat == 0){
	$seatstring = "five";
	$row = $row - 1;
}
echo 'row:'.$row.' ; seat:'.$seat;
$sql = "UPDATE seats SET ".$seatstring."=1 WHERE id=".$row." AND movie_id=".$_GET['movie'];
if(isset($_GET['firstname']) && isset($_GET['lastname']) && isset($_GET['email']))
	{
		if ($conn->query($sql) === TRUE) {		
			
		} else {
			echo "A aparut o eroare: " . $conn->error;
		}
		
		$headers = 'From: Cinema <no-reply@cinema.ro>';
		$subject = 'Rezervare cinema';
		$message = 'Buna ziua,

locul '.$seatnumber.' a fost rezervat pentru '.$_GET['firstname'].' '.$_GET['lastname'].'.

Vizionare placuta!';

		$mail = mail($_GET['email'],$subject,$message,$headers);
		
		if($mail)
		{
			echo "<center>Locul ".$seatnumber." a fost rezervat pentru ".$_GET['firstname']." ".$_GET['lastname'].". Rezervarea a fost trimisa la <b>".$_GET['email']."</b></center>";
		} else {
			echo "A aparut o eroare la trimiterea mailului.";
		}
	} else {
		if(!isset($mail))
		{
			$mail = '<div style="color:red">Va rugam sa completati toate campurile!</div>';
		}
	}


$conn->close();
?>