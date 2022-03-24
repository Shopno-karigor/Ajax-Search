<?php
include_once ("../../vendor/autoload.php");
use App\Search\Search;
$b = new Search();

if (array_key_exists('key',$_POST)) {
  if (array_key_exists('inlineRadioOptions',$_POST)) {

    if($_POST['inlineRadioOptions']=="searchLocation" ){
      $tbl="abouts";
      $tblFields = "address";
      $showFeild = "address";
    }
    if ($_POST['inlineRadioOptions']=="searchWork") {
      $tbl="abouts";
      $tblFields = "title";
      $showFeild = "title";
    }
    if ($_POST['inlineRadioOptions']=="searchName") {
      $tbl="users";
      $tblFields = "name";
      $showFeild = "name";
    }
    $result = $b->show_single($_POST['key'],$tbl,$tblFields,$showFeild);
  }
  else {
    $tbl="users";
    $tblFields = "name";
    $showFeild = "name";
    $result = $b->show_single($_POST['key'],$tbl,$tblFields,$showFeild);
  }

  // echo "<pre>";
  // print_r($result);
  // die();
}
?>

          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h3 class="title">Showing result for <?php echo $_POST['key'];?></h3>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <?php
            if (array_key_exists('0',$result)) {

                foreach ($result as $value) {
                  $findName =$b->findName($value['user_id']);
                  $findAbout =$b->findAbout($value['user_id']);

                  ?>

                  <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 m-t-lg">
                    <div class="col-lg-2 col-sm-2 col-md-2 col-xs-2">
                      <img src="../../assets/images/user/<?php echo $findAbout['img']?>" alt="" class="img-responsive center-block img-circle">
                    </div>
                    <div class="col-lg-6 col-sm-6 col-md-6 col-xs-6 p-t-lg">
                      <h3><?php echo $findName['name']; ?></h3>
                      <h3><?php echo $findAbout['title']; ?></h3>
                      <h3><?php echo $findAbout['address']; ?></h3>

                    </div>

                  </div>

                <?php
                }

            }else {
              ?>
              <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 m-t-lg">
                <div class="col-lg-2 col-sm-2 col-md-2 col-xs-2">
                  <img src="../../assets/images/user/user-not-found.png" alt="" class="img-responsive center-block img-circle">
                </div>
                <div class="col-lg-6 col-sm-6 col-md-6 col-xs-6 p-t-lg">
                  <h3>Not Found</h3>

                </div>

              </div>
              <?php
            }

             ?>
