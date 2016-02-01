         var baseURL = "http://192.168.0.15/hackv2/scripts/";
         var staticURL = "http://192.168.0.15/hackv2/";

     
            $(document).ready(function () {
                // body...
                console.log(window.location.hash);
                if(window.location.hash==''){
                  console.log("defaultView");

                 $('#app').load('templates/home.html',homeController);
                         
                  }else{
                    $(window).trigger( "hashchange" ); // user refreshed the browser, fire the appropriate function
                  }

                  // Manage all link clicks here
                  
                $('a').click(function(e){
                  e.preventDefault();
                  var href = $(this).attr('href');
                  window.location.hash = href;
                  console.log(href);

                  if (href == "#home") {
                    $('#app').load('templates/home.html',homeController);
                  }

                  if (href == "#addnewdonor") 
                  {
                    $('#app').load('templates/donors.html #content',newdonorController);
                  
                  }
                  if (href == "#events") 
                  {
                    $('#app').load('templates/events.html',eventsController);
                  
                  }
                  if (href == "#createEvent") 
                  {
                    $('#app').load('templates/createEvent.html',createEventController);
                  
                  }

                });

                
                window.onhashchange = handler();
                function handler(){
                 href = window.location.hash ;
                      if (href == "#home") {
                          $('#app').load('templates/home.html',homeController);
                        }

                        if (href == "#addnewdonor") 
                        {
                          $('#app').load('templates/donors.html #content',newdonorController);
                        
                        }
                        if (href == "#events") 
                        {
                          $('#app').load('templates/events.html',eventsController);
                        
                        }
                        if (href == "#createEvent") 
                        {
                          $('#app').load('templates/createEvent.html',createEventController);
                        
                        }
                }
                // $('ul.tabs').tabs();
                  $('.button-collapse').sideNav({
                      menuWidth: 300, // Default is 240
                      edge: 'left', // Choose the horizontal origin
                      closeOnClick: true // Closes side-nav on <a> clicks, useful for Angular/Meteor
                    }
                  );
                  


            });
