 $(document).ready(function(){
         $('.datepicker').pickadate({
            selectMonths: true, // Creates a dropdown to control month
            selectYears: 15 // Creates a dropdown of 15 years to control year
          });

        });

        $('#register_form').submit(function(e) {
                e.preventDefault();
                var url = "http://192.168.0.15/hackv2/scripts/useradd.php";
              
                $.ajax({ 
                  type: "POST",
                  // dataType:"json", 
                  url: url,
                  crossDomain:true,
                  xhrFields: {
                      withCredentials: false
                   },
                  data: $('#register_form').serialize(),
                  success:function(data){
                    // var obj = JSON.parse(data);
                    console.log(data);
                    if (data == "ok") {
                        Materialize.toast("You have been Registered Successfully!");
                        window.localStorage['username'] = $('#name').val(); 
                      }else{
                        Materialize.toast("Something is wrong " + data) ;
                      }
                    }
                  
                });
                return false;
              });



        $('#login_form').submit(function(e) {
                e.preventDefault();
                var url = "http://192.168.0.15/hackv2/scripts/userlogin.php";
               
                $.ajax({ 
                  type: "POST",
                  // dataType:"json", 
                  url: url,
                  crossDomain:true,
                  xhrFields: {
                      withCredentials: false
                   },
                  data: $('#login_form').serialize(),
                  success:function(data){
                    // var obj = JSON.parse(data);
                    alert(data);
                    if (data == "ok") {
                        // Materialize.toast("You have been Registered Successfully!");
                        window.localStorage.username = $('#uname').val(); 
                        window.location.href="main.html";
                      }else{
                        Materialize.toast('Invalid Username Or Password',3000);
                      }
                    }
                  
                });
                return false;
              });

