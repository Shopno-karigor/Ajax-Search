
      $("#searchKey").keyup(function() {

        var searchValue = $("#searchKey").val();


        if (searchValue) {

          if ($('input[name=inlineRadioOptions]').is(':checked')){

              var searchKey = $('input[name=inlineRadioOptions]:checked').val();
              // alert(searchKey);
              var dataToSend = { searchValue: searchValue, contentKey: searchKey};
              // alert(dataToSend.contentKey);
          }
          if (!$('input[name=inlineRadioOptions]').is(':checked')){
            var searchKey = 'undefine'
              var dataToSend = { searchValue: searchValue, contentKey: searchKey};
              // alert(dataToSend.contentKey);
          }



          $.post("views/php/_search.php", dataToSend, function(data, status){
              if(status === 'success')
              {
                //  alert(data);
                 $("#search-option").css("display","block")
                   $("#search-option").html(data)
              }
            });

        }

        else {
          $("#search-option").css("display","none")
        }
      });

      $("body").click(function() {
        $("#search-option").css("display","none")
      });
