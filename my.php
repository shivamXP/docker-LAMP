<?php
require_once("DB.inc");
function show()
{
        $studentDB = new StudentAccess("project1");
        $studentDB->show();
}
switch($_POST["type"])
{
        case "show":
            show();
 	break;
}
?>
