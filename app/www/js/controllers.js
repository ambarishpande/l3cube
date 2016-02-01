function homeController(){   
     $(document).ready(function(){
        $('ul.tabs').tabs();
        $('.title').html('Dashboard');
        // console.log(window.localStorage.currentCity);
        $('#currentCity').val(window.localStorage.currentCity);
      });

      $('#search_form').submit(function(e) {
        e.preventDefault();
        var url = baseURL + "userdoners.php";
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
              console.log(data);
              var donors = JSON.parse(data);
              var html="";

              if (donors[0].name != null) {
                for (var i = 0; i < donors.length; i++) {
                  console.log(donors[i].name);
                   html = html +  '<li class="collection-item avatar"><img src="'+staticURL+'img/drop.jpg" alt="" class="circle"><span class="title">'+  donors[i].name +'</span><p>'+donors[i].cno+'<br>'+donors[i].Bgroup+'</p><a href="#!" class="secondary-content"><i class="material-icons">grade</i></a></li>';
                 }
                $('#donor_list').html(html);
                  
              }else{
                $('#donor_list').html("Sorry! No Matches found!");
              }
              

            }
          
          });

         var url = baseURL + "userbanks.php";
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
              console.log(data);
              var banks = JSON.parse(data);
              var html="";
              if (banks[0].name!=null) {
                  for (var i = 0; i < banks.length; i++) {
                    console.log(banks[i].name);
                     html = html +  '<li class="collection-item avatar"><img src="'+staticURL+'img/drop.jpg" alt="" class="circle"><span class="title">'+  banks[i].name +'</span><p>Phone no :'+banks[i].cno+'<br>'+banks[i].bno + ","+banks[i].streetno  + ","+banks[i].area  + ","+banks[i].city  + "<br> Count : "+banks[i].noofstock  +'</p><a href="#!" class="secondary-content"><i class="material-icons">grade</i></a></li>';
                   }
                  $('#bank_list').html(html);
                }else{
                  $('#bank_list').html("<p>Sorry No Stock Available!</p>");
                }   }
          
          });
      return false;
      });
}

  function eventsController(){
    $('.title').html('Events');
    console.log(baseURL + 'showEvent.php?city=' + window.localStorage.currentCity);
    $.get(baseURL + 'showEvent.php?city=' + window.localStorage.currentCity ,function(data){
      console.log(data);
      var events = JSON.parse(data);
      var html="";
      if (events[0].eventname!=null) {
          for (var i = 0; i < events.length; i++) {
            console.log(events[i].name);
             html = html +  '<li class="collection-item avatar"><img src="'+staticURL+'img/drop.jpg" alt="" class="circle"><span class="title">'+  events[i].eventname +'</span><br>Venue :, '+events[i].bno + ","+events[i].streetno  + ","+events[i].area  + ","+events[i].city + "<br>Date : "+ events[i].tdate + "<br>From :"+ events[i].stime + "<br>To :" +events[i].etime +'</p><a href="#!" class="secondary-content"><i class="material-icons">grade</i></a></li>';
           }
          $('#event_list').html(html);
        }else{
          $('#event_list').html("<p>No Events yet!</p>");
        }

    });  

  }


function createEventController()
{
  $('.title').html('New Event');
 $.getScript('http://lab.iamrohit.in/js/location.js');

    $('#uname').html(window.localStorage.username);

    $('#event_form').submit(function(e) {
        e.preventDefault();
        var url = baseURL + "createEvent.php";
        $.ajax({ 
            type: "POST",
            url: url,
            crossDomain:true,
            xhrFields: {
                withCredentials: false
            },
            data: $('#event_form').serialize(),
            success:function(data){
              // var obj = JSON.parse(data);
             console.log(data);
             if (data == "ok") {
              Materlize.toast("Event Created Successfully!",4000);
             }

            }
          
          });
      return false;
      });
}
