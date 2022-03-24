<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Search</title>
  </head>

  <link rel="stylesheet" type="text/css" href="../../assets/css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="../../assets/css/font-awesome.min.css" />
  <link rel="stylesheet" type="text/css" href="../../assets/css/normalize.css" />
  <link rel="stylesheet" type="text/css" href="../../assets/css/colors/brown.css" />
  <link rel="stylesheet" type="text/css" href="../../assets/css/search.css">


  <body>
    <section class="search-area-result">
      <div class="container">
        <div class="row">
          <?php include '../php/_result.php';?>


          </div>
        </div>
      </div>
    </section>







  </body>

  <script type="text/javascript" src="../../assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="../../assets/js/bootstrap.min.js"></script>



  <script type="text/javascript">


    $(window).load(function() {

      if (typeof window.innerWidth != 'undefined') {
      var viewPortHeight = window.innerHeight;
      }

      $('#footerArea').css("margin-top", 30 );



    });
  </script>




</html>
