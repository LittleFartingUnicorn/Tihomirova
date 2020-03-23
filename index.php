<?php
require("functions.php");
<<<<<<< HEAD
$cont_page = include_template("index.php",["arrcategory"=>$arrcategory,"products"=>$products,"dateandtime"=>$dateandtime]);
=======
$cont_page = include_template("index.php",["arrcategory"=>$arrcategory,"products"=>$products]);
>>>>>>> f325b399de0f63636c9f422b99d6bcdbaf9ed849
$layout_cont = include_template("layout.php",["tit"=>"YetiCave","is_auth"=>$is_auth,"user_name"=>$user_name,"cont_page"=>$cont_page,"arrcategory"=>$arrcategory]);
print($layout_cont);
?>