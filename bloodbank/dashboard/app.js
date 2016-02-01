
var baseURL = "http://localhost/hackv2/scripts/";


$(document).ready(function () {
    // body...
    
    if(window.location.hash==''){
      $('#app').load('templates/dashboard.html',dashboardController);
             
      }else{
        $(window).trigger( "hashchange" ); // user refreshed the browser, fire the appropriate function
      }

      // Manage all link clicks here
      
    $('a').click(function(e){
      e.preventDefault();
      var href = $(this).attr('href');
      console.log(href);

      if (href == "#dashboard") {
        $('#app').load('templates/dashboard.html',dashboardController);
      }

      if (href == "#addnewdonor") {
        $('#app').load('templates/donors.html #content',newdonorController);
      }

      if (href == "#addstock") {
        $('#app').load('templates/addstock.html',addStockController);
      }

    });
    // $('ul.tabs').tabs();
      $('.button-collapse').sideNav({
          menuWidth: 300, // Default is 240
          edge: 'left', // Choose the horizontal origin
          // closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
        }
      );
      $.ajax({ 
        type: "GET",
        url: "../scripts/issession.php",
        crossDomain:true,
        xhrFields: {
            withCredentials: false
        },
        success:function(data){
          // var obj = JSON.parse(data);
          // console.log(data);
          //alert(data);
          // console.log(data);
          if(data!="ok"){
            window.location.href="/hack";
          }
        }
      
      });


});
$('#logout').click(function(){
    $.ajax({ 
        type: "GET",
        url: "/hack/scripts/bblogout.php",
        crossDomain:true,
        xhrFields: {
            withCredentials: false
        },
        success:function(data){
          // var obj = JSON.parse(data);
          // console.log(data);
          //alert(data);
          // console.log(data);
          alert(data);
            window.location.href="/hack";
        }
      
      });
});

