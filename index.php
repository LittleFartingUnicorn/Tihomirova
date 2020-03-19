<?php
require("functions.php");
$cont_page = include_template("index.php",["arrcategory"=>$arrcategory,"products"=>$products]);
$layout_cont = include_template("layout.php",["tit"=>"YetiCave","is_auth"=>$is_auth,"user_name"=>$user_name,"cont_page"=>$cont_page,"arrcategory"=>$arrcategory]);
print($layout_cont);
?>