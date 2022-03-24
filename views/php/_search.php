<?php


include_once ("../../vendor/autoload.php");
use App\Search\Search;
$b = new Search();
if (array_key_exists("searchValue",$_POST)) {
  $searchValue = $_POST['searchValue'];

  $tbl="";
  $tblFields = "";
  $showFeild ="";


  if($_POST['contentKey']=="searchLocation" ){
    $tbl="abouts";
    $tblFields = "address";
    $showFeild = "address";
  }
  if ($_POST['contentKey']=="searchWork") {
    $tbl="abouts";
    $tblFields = "title";
    $showFeild = "title";
  }
  if ($_POST['contentKey']=="searchName" || $_POST['contentKey']=="undefine" ) {
    $tbl="users";
    $tblFields = "name";
    $showFeild = "name";
  }




  $b->show($searchValue,$tbl,$tblFields,$showFeild);

}

// else {
//   header("location:http://localhost/cvzone/views/layout/search-result.php?value=".$_POST['key']);
// }



 ?>
