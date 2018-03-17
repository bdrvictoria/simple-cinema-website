<!DOCTYPE html>
<html>
<head>
<style>
#customers {
    font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
    border-collapse: collapse;
    width:50%;
}

#customers td, #customers th {
    border: 1px solid #ddd;
    padding: 8px;
}

#customers tr:nth-child(even){background-color: #f2f2f2;}

#customers tr:hover {background-color: #ddd;}

#customers th {
    padding-top: 12px;
    padding-bottom: 12px;
    text-align: left;
    background-color: #000000;
    color: white;
}
input[type=text], select {
    width: 50%;
    padding: 12px 20px;
    margin: 8px 0;
    display: inline-block;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
}

input[type=submit] {
    width: 50%;
    background-color: #4CAF50;
    color: white;
    padding: 14px 20px;
    margin: 8px 0;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

div {
    border-radius: 5px;
    background-color: #f2f2f2;
    padding: 20px;
	width: 48%;
}
</style>
</head>
<body>

<center>
<div>
	<?php
		echo '<img src="images/img'.$_GET['movie'].'.jpg" width="30%" height="30%"></img>';
	?>
  <form action="submit.php" method="GET">
    <input type="text" id="fname" name="firstname" placeholder="Name">

    <input type="text" id="lname" name="lastname" placeholder="Last name">

	<input type="text" id="email" name="email" placeholder="Email address">
	
	<?php
		echo '<input type="hidden" id="movie" name="movie" value="'.$_GET['movie'].'">';
		echo '<select id="seat" name="seat">';
		
		$servername = "localhost";
		$username = "root";
		$password = "";
		$dbname = "id4637639_cinemadb";

		$conn = new mysqli($servername, $username, $password, $dbname);

		if ($conn->connect_error) {
			die("Connection failed: " . $conn->connect_error);
		} 

		$sql = "SELECT id, one, two, three, four, five FROM seats WHERE movie_id = '".$_GET['movie']."'";
		$result = $conn->query($sql);

		if ($result->num_rows > 0) {
			$seatnumber = 1;
			$lastid = 0;
			while($row = $result->fetch_assoc()) {
				if ($row["one"]==0) {
					echo '<option value="'.$seatnumber.'">'.$seatnumber.'</option>';
				}
				$seatnumber = $seatnumber + 1;
				if ($row["two"]==0) {
					echo '<option value="'.$seatnumber.'">'.$seatnumber.'</option>';
				}
				$seatnumber = $seatnumber + 1;
				if ($row["three"]==0) {
					echo '<option value="'.$seatnumber.'">'.$seatnumber.'</option>';
				}
				$seatnumber = $seatnumber + 1;
				if ($row["four"]==0) {
					echo '<option value="'.$seatnumber.'">'.$seatnumber.'</option>';
				}
				$seatnumber = $seatnumber + 1;
				if ($row["five"]==0) {
					echo '<option value="'.$seatnumber.'">'.$seatnumber.'</option>';
				}
				$seatnumber = $seatnumber + 1;
			}
		} else {
			echo "0 results";
		}

		$conn->close();
	?>
    </select>
    <input type="submit" value="Submit">
  </form>
</div>

<table id="customers">
  <tr>
    <th colspan="5"><center>List of seats</center></th>
  </tr>
  
<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "id4637639_cinemadb";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
} 

$sql = "SELECT id, one, two, three, four, five FROM seats WHERE movie_id = '".$_GET['movie']."'";
$result = $conn->query($sql);

if ($result->num_rows > 0) {
	$seatnumber = 1;
	$lastid = 0;
    while($row = $result->fetch_assoc()) {
		if ($row["id"] != $lastid){
			echo "<tr>";
		}
		if ($row["one"]==0) {
			echo '<td bgcolor="#4CAF50"><center>'.$seatnumber.'</center></td>';
        } else {
			echo '<td bgcolor="#ff0000"><center>'.$seatnumber.'</center></td>';
		}
		$seatnumber = $seatnumber + 1;
		if ($row["two"]==0) {
			echo '<td bgcolor="#4CAF50"><center>'.$seatnumber.'</center></td>';
        } else {
			echo '<td bgcolor="#ff0000"><center>'.$seatnumber.'</center></td>';
		}
		$seatnumber = $seatnumber + 1;
		if ($row["three"]==0) {
			echo '<td bgcolor="#4CAF50"><center>'.$seatnumber.'</center></td>';
        } else {
			echo '<td bgcolor="#ff0000"><center>'.$seatnumber.'</center></td>';
		}
		$seatnumber = $seatnumber + 1;
		if ($row["four"]==0) {
			echo '<td bgcolor="#4CAF50"><center>'.$seatnumber.'</center></td>';
        } else {
			echo '<td bgcolor="#ff0000"><center>'.$seatnumber.'</center></td>';
		}
		$seatnumber = $seatnumber + 1;
		if ($row["five"]==0) {
			echo '<td bgcolor="#4CAF50"><center>'.$seatnumber.'</center></td>';
        } else {
			echo '<td bgcolor="#ff0000"><center>'.$seatnumber.'</center></td>';
		}
		$seatnumber = $seatnumber + 1;
		if ($row["id"] != $lastid){
			echo "</tr>";
			$lastid = $row["id"];
		}
    }
} else {
    echo "0 results";
}

$conn->close();
?> 
</table>
</center>
</body>
<footer>
</br></br></br></br></br></br></br></br></br></br></br>
</footer>
</html>
