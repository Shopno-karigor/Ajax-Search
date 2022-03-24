<?php

namespace App\Search;
use PDO;
include("../../db/dbconnection.php");

class Search
{
    private $searchTbl = '';
    private $searchKeyId = '';
    private $searchMatch = '';

  public function setData($value='')
  {

    if(array_key_exists("value",$value)){
        $this->searchTbl ="users";
        $this->searchKeyId="username";
        $this->searchMatch=$value['value'];
    }
      if(array_key_exists("location",$value)){
          $this->searchTbl ="settings";
          $this->searchKeyId="address";
          $this->searchMatch=$value['location'];
      }
      if(array_key_exists("work",$value)){
          $this->searchTbl ="abouts";
          $this->searchKeyId="title";
          $this->searchMatch=$value['work'];
      }

  }



    public function show($value='',$tbl='',$fields='',$showFeild='')
    {




      try{
          $pdo = new PDO('mysql:host=localhost;dbname='.db_name,db_username,db_password);
          $query = "SELECT * FROM  $tbl WHERE $fields LIKE '$value%' and deleted_at='0000-00-00 00:00:00'";
          $stmt = $pdo->prepare($query);
          $stmt->execute();
          $data = $stmt->fetchAll();

          if (!empty($data)) {
            foreach ($data as $item) {
              echo '<div class="col-lg-12 col-sm-12 col-md-12 col-xs-12 clear-p">';

              $queryImg = "SELECT * FROM  abouts WHERE user_id='".$item['user_id']."'";
              $stmtImg = $pdo->prepare($queryImg);
              $stmtImg->execute();
              $dataImg = $stmtImg->fetchAll();

                echo '<a href="#"><img src="assets/images/user/'.$dataImg[0]['img'].'" class="img-circle img-responsive m-t-5"/></a>';
                echo '<a href="#" class="m-l-sm"><p>'.$item[$showFeild].'</p></a>';
              echo '</div>';
            }
          }else {
            echo '<a href=""><p>Not Found</p></a>';
          }



          // return $data[0]["username"];

      }catch (PDOException $e){
          echo 'Error: '. $e->getMessage();
      }
    }

    public function show_single($value='',$tbl='',$fields='',$showFeild='')
    {


      try{
          $pdo = new PDO('mysql:host=localhost;dbname='.db_name,db_username,db_password);
          $query = "SELECT * FROM  $tbl WHERE $fields LIKE '%$value%' and deleted_at='0000-00-00 00:00:00'";
          $stmt = $pdo->prepare($query);
          $stmt->execute();
          $data = $stmt->fetchAll();
          return $data;

      }catch (PDOException $e){
          echo 'Error: '. $e->getMessage();
      }
    }



    public function findAbout($value=''){
        try{
            $pdo = new PDO('mysql:host=localhost;dbname='.db_name,db_username,db_password);
            $query = "SELECT * FROM abouts WHERE user_id = '$value' and deleted_at='0000-00-00 00:00:00'";
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $data = $stmt->fetchAll();
             return $data[0];

        }catch (PDOException $e){
            echo 'Error: '. $e->getMessage();
        }
    }



    public function findName($value=''){
        try{
            $pdo = new PDO('mysql:host=localhost;dbname='.db_name,db_username,db_password);
            $query = "SELECT * FROM users WHERE user_id = '$value' and deleted_at='0000-00-00 00:00:00'";
            $stmt = $pdo->prepare($query);
            $stmt->execute();
            $data = $stmt->fetchAll();

             return $data[0];

        }catch (PDOException $e){
            echo 'Error: '. $e->getMessage();
        }
    }





}



?>
