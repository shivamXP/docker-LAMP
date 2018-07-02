<?php
class StudentAccess
{
private $db;
public function __construct()
{
	$this->db = new mysqli("mysql","root","toor","new");
	if ($this->db->connect_errno != 0)
	{
		echo "error connecting to databse: ".$this->db->connect_error.PHP_EOL;
		exit();
	}
}
public function __destruct()
{
	if (isset($this->db))
	{
		$this->db->close();
	}
}
public function show(){
        $query = "select * from names";
        $queryResponse = $this->db->query($query);
        $response = array();
        while($row = $queryResponse->fetch_assoc())
        {
                $response[] = $row;
        }
        return $response; 
}
}
?>
