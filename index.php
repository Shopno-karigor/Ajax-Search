<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8">
    <title>Search</title>
  </head>
  <link rel="stylesheet" type="text/css" href="assets/css/bootstrap.min.css" />
  <link rel="stylesheet" type="text/css" href="assets/css/font-awesome.min.css" />
  <link rel="stylesheet" type="text/css" href="assets/css/normalize.css" />
  <link rel="stylesheet" type="text/css" href="assets/css/colors/brown.css" />
  <link rel="stylesheet" type="text/css" href="assets/css/search.css">
  <body>
    <section class="search-area">
      <div class="container">
        <div class="row">
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12">
            <h1 class="text-center title">CUSTOMIZE SEARCH</h1>
          </div>
          <div class="col-lg-12 col-md-12 col-sm-12 col-xs-12 search-box">
            <form class="form-horizontal col-lg-8 col-md-8 col-sm-8 col-xs-12 col-lg-offset-2 col-sm-offset-2 col-md-offset-2" action="views/layout/result.php" method="post" autocomplete="off">
              <div class="form-group  has-feedback">

                <input type="text" class="form-control" id="searchKey" placeholder="Search Person" name="key"  />
                <span class="fa fa-search form-control-feedback fr" aria-hidden="true" id="inter"></span>
              </div>
              <div class="search-option" id="search-option">
                <!-- <h3 id="suggestion"></h3> -->
              </div>
              <div class="col-lg-8 col-md-8 col-sm-8 col-xs-12 col-lg-offset-2 col-sm-offset-2 col-md-offset-2 clear-p">
                <label class="radio-inline">
                  <input type="radio" name="inlineRadioOptions" id="" value="searchName"> Search By Name
                </label>
                <label class="radio-inline">
                  <input type="radio" name="inlineRadioOptions" id="" value="searchWork"> Search By Work
                </label>
                <label class="radio-inline">
                  <input type="radio" name="inlineRadioOptions" id="" value="searchLocation"> Search By Location
                </label>
              </div>
            </form>
          </div>
        </div>
      </div>
    </section>
    <section class="footer-section" id="footerArea">
      <div class="container-fluid">
        <div class="row">
          <div class="footer">
            <p class="p-h-xl pull-left">Terms &amp; Condition</p>
            <p class="p-h-xl pull-right">All right reserved by &copy; <a href="https://ratul.info/">Shopnokarigor</a></p>
          </div>
        </div>
      </div>
    </section>
  </body>
  <script type="text/javascript" src="assets/js/jquery.min.js"></script>
  <script type="text/javascript" src="assets/js/bootstrap.min.js"></script>
  <script type="text/javascript" src="assets/js/search.js"></script>
  <script type="text/javascript">
    $(document).ready(function() {
      if (typeof window.innerWidth != 'undefined') {
      var viewPortHeight = window.innerHeight
      }
      $('#footerArea').css("margin-top", viewPortHeight-(244+50) );
    });
  </script>
</html>
