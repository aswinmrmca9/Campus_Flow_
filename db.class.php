<?php
$conn=mysqli_connect("localhost","root","","campus_bridge");
if(!$conn)
   die("connection fail");
  

 function insert($sql)
{
    global $conn;
    if (!mysqli_query($conn, $sql)) {
        echo mysqli_error($conn);
        return False;
    } else
        return True;
}

function getrows($sql)
{
    global $conn;
    $res = mysqli_query($conn, $sql);
    if ($res) {
        $numrow = mysqli_num_rows($res);
        return $numrow;
    } else {
        return False;
    }
}

function select($sql)
{
    global $conn;
    $res = mysqli_query($conn, $sql);
    if ($res) {
        return $res;
    } else {
        return False;
    }
}

function update($sql)
{
    global $conn;
    $res = mysqli_query($conn, $sql);
    if ($res) {
        return $res;
    } else {
        return False;
    }
}


   

?>