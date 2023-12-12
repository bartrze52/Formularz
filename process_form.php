<?php
$servername = "localhost";
$username = "root";
$password = "";
$dbname = "database";

$conn = new mysqli($servername, $username, $password, $dbname);

if ($conn->connect_error) {
    die("Connection failed: " . $conn->connect_error);
}

$firstName = $_POST['firstName'];
$lastName = $_POST['lastName'];
$birthdate = $_POST['birthdate'];
$email = $_POST['email'];
$phone = $_POST['phone'];
$province = $_POST['province'];
$gender = $_POST['gender'];
$newsletter = isset($_POST['newsletter']) ? 1 : 0;

$stmt = $conn->prepare("INSERT INTO ludzie (firstName, lastName, birthdate, email, phone, province, gender, newsletter) VALUES (?, ?, ?, ?, ?, ?, ?, ?)");
$stmt->bind_param("sssssssi", $firstName, $lastName, $birthdate, $email, $phone, $province, $gender, $newsletter);

if ($stmt->execute()) {
    echo "Dane zostały pomyślnie zapisane.";
} else {
    echo "Błąd podczas zapisywania danych: " . $stmt->error;
}

$stmt->close();
$conn->close();
?>