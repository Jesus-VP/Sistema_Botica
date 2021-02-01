<?Php
session_start();
require("conexion.php");

$usuario=$_POST["usuario"];
$pass=$_POST["pass"];

$query=mysqli_query($con, "select * from usuarios");

$_SESSION["logeado"]="no";
while($fila=mysqli_fetch_array($query))
{
	if(($fila[1]==$usuario)&&($fila[2]==$pass))
	{
		$_SESSION["logeado"]="si";
	}
}


if($_SESSION["logeado"]=="si")	
{
	$destino= "../home.html";
}
else
{
	$destino="../index.html";
}
header("location:".$destino);

?>