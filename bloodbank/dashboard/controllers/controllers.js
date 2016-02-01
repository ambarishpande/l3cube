function dashboardController(){   
     $(document).ready(function(){
        $('ul.tabs').tabs();
        $('.title').html('Dashboard');
      });

      $('#search_form').submit(function(e) {
        e.preventDefault();
        var url = "../scripts/listdoners.php";
        $.ajax({ 
            type: "POST",
            url: url,
            crossDomain:true,
            xhrFields: {
                withCredentials: false
            },
            data: $('#search_form').serialize(),
            success:function(data){
              // var obj = JSON.parse(data);
              // console.log(data);
              // alert(data);
              // console.log(data);
              var donors = JSON.parse(data);
              var html="";
              for (var i = 0; i < donors.length; i++) {
                console.log(donors[i].name);
                html = html+'<li class="collection-item avatar"><img src="../img/drop.jpg" alt="" class="circle"><span class="title">'+  donors[i].name +'</span><p>'+donors[i].cno+'<br>'+donors[i].Bgroup+'</p><a href="#!" class="secondary-content"><i class="material-icons">grade</i></a></li>';
              }
              $('#donor_list').html(html);
            }
          
          });
        var url = "../scripts/listbanks.php";
        $.ajax({ 
            type: "POST",
            url: url,
            crossDomain:true,
            xhrFields: {
                withCredentials: false
            },
            data: $('#search_form').serialize(),
            success:function(data){
              // var obj = JSON.parse(data);
              // console.log(data);
              //alert(data);
              var donors = JSON.parse(data);
              var html="";
              for (var i = 0; i < donors.length; i++) {
                console.log(donors[i].name);
                html = html+'<li class="collection-item avatar"><img src="../img/drop.jpg" alt="" class="circle"><span class="title">'+  donors[i].name +'</span><p>'+donors[i].bno+','+donors[i].streetno+','+donors[i].area+','+donors[i].city+'<br>'+donors[i].noofstock+'</p><a href="#!" class="secondary-content"><i class="material-icons">grade</i></a></li>';
              }
              $('#bb_list').html(html);
            }
          
          });
      return false;
      });
}


function newdonorController(){
            $('.title').html('Add Donors');
                    
            $.getScript('http://lab.iamrohit.in/js/location.js');

              $('#donor_form').submit(function(e) {
                e.preventDefault();
                var url = "../scripts/useradd.php";
                $.ajax({ 
                  type: "POST",
                  // dataType:"json", 
                  url: url,
                  crossDomain:true,
                  xhrFields: {
                      withCredentials: false
                   },
                  data: $('#donor_form').serialize(),
                  success:function(data){
                    // var obj = JSON.parse(data);
                    console.log(data);
                  }
                  
                });
                return false;
              });

               // $('.datepicker').pickadate();
          }

function addStockController(){
$('.title').html('Add Stock');
            
     $('#add_stock_form').submit(function(e) {
          e.preventDefault();
          var url = baseURL + "addstock.php";
          $.ajax({ 
            type: "POST",
            // dataType:"json", 
            url: url,
            crossDomain:true,
            xhrFields: {
                withCredentials: false
             },
            data: $('#add_stock_form').serialize(),
            success:function(data){
              // var obj = JSON.parse(data);
              // console.log(data);
              if (data =="ok") {
                Materialize.toast("Added Stock",2000);
              }
            }
            
          });
          return false;
        });
}