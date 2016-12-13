/**
 * Created by liuchao on 12/13/16.
 */

$(document).ready(function(){

    $('#nav-login').click(function(){
        $('.popover-mask').fadeIn(50);
        $('.login-popover').show();
    });

    $('.login-title .login-close').click(function(){
        $('.popover-mask').fadeOut(50);
        $('.login-popover').hide();
    });

    $('#nav-register').click(function(){
        $('.popover-mask').fadeIn(50);
        $('.reg-popover').show();
    });

    $('.register-title .register-close').click(function(){
        $('.popover-mask').fadeOut(50);
        $('.reg-popover').hide();});

    $("#nav-logout").click(function(){
        $.ajax({
            type:"POST",
            url:"/account/logout/",
            dataType:'json',
            beforeSend:function(xhr){
                xhr.setRequestHeader("X-CSRFToken", $.cookie('csrftoken'));
            },
            success:function(data,textStatus){
                var status = data["status"];
                var message = data["message"];
                if(status=="success"){
                    location.replace("/");
                }
                else if(status=="fail"){
                    alert(message);
                    location.reload();
                }
            },
            error:function(XMLHttpRequest, textStatus, errorThrown){
                alert(XMLHttpRequest.responseText);
            }
        });
        return false;
    });

    $("#login-submit").click(function(){
        email = $('#login-email').val();
        password = $('#login-pwd').val();
        if(!(email && password)){
            $('#login-error').html('邮箱和密码不能为空!')
        }
        else{
            $.ajax({
                type:'POST',
                url:'/account/login/',
                data:{'email':email,"password":password},
                dataType:'json',
                beforeSend:function(xhr){
                    xhr.setRequestHeader("X-CSRFToken", $.cookie('csrftoken'));
                },
                success: function(data,textStatus){
                    var status = data["status"];
                    var message = data["message"];
                    if(status=="fail"){
                        $('#login-error').html('&nbsp;&nbsp;'+message);
                    }
                    else if(status=="success"){
                        alert(message);
                        location.reload();
                    }
                    else{
                        alert('异常');
                    }
                    },
                error:function(XMLHttpRequest, textStatus, errorThrown){
                        document.write(XMLHttpRequest.responseText);
                    }
            });
            return false;
        }
    });

    $('#reg-submit').click(function(){
            var email = $("#reg-email").val();
            var password_1 = $("#reg-pwd1").val();
            var password_2 = $("#reg-pwd2").val();
            var re = /^[0-9a-zA-Z\_\.]+@([0-9a-zA-Z\_\-])+(.[a-zA-Z0-9\-\_])+/;

            if(!re.test(email)){
                $("#reg-error").html('邮箱不符合规范');
              }
            else if(!(password_1 && password_2)){
                $("#reg-error").html('密码不能为空');
            }
            else if((password_1.length<6) || (password_2.length<6)){
                $("#reg-error").html('密码不能少于6位！');
            }
            else if(!(password_1 == password_2)){
                $("#reg-error").html('两次密码不一致');
                $("reg-pwd1").value ='';
                $("reg-pwd2").value ='';

            }
            else{
                  $.ajax({
                          type:'POST',
                          url:'/account/register/',
                          data:{"email":email,"password_1":password_1, "password_2":password_2},
                          dataType:'json',
                          beforeSend:function(xhr){
                             xhr.setRequestHeader("X-CSRFToken", $.cookie('csrftoken'));
                          },
                          success:function(data,textStatus){
                              var status = data["status"];
                              var message = data["message"];
                              if(status == "fail"){
                                  $("#reg-error").html(message)
                              }
                              else{
                                  alert(message);
                                  location.reload();
                              }
                          },
                          error:function(XMLHttpRequest, textStatus, errorThrown){
                               alert(XMLHttpRequest.responseText);
                          }
                  });
                  return false;
                  }
       });

});