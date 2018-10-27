/* 
* @Author: Marte
* @Date:   2018-08-19 09:37:18
* @Last Modified by:   Marte
* @Last Modified time: 2018-08-20 22:03:09
*/



;(function(){

    document.addEventListener('DOMContentLoaded',function(){

    // 验证用户是否已注册
    let username = document.querySelector('#username');console.log(username)
    let password = document.querySelector('#password');console.log(password)
    let confirm = document.querySelector('#cr_psd');console.log(confirm)
    
    let code1 = document.querySelector('#code1');console.log(code1)
    let code2 = document.querySelector('#code2');console.log(code2)
    let xieyi = document.querySelector('#xieyi');console.log(xieyi)
    let _username;
    let _password;
    let isok;
    let _code;
    let span2;
    let _confirm;
    let status = [200,304];

    //用户名框失去焦点时触发
    username.onblur = ()=>{
        _username = username.value;
        let xhr = new XMLHttpRequest();
        xhr.onload = ()=>{
            if(status.indexOf(xhr.status)>= 0){console.log(xhr.responseText)
                if(xhr.responseText === 'no'){
                    alert('用户名：' +_username +'已经被注册了');
                  
                }else{console.log(666)
//                  // 可以注册用户名的时候，边框颜色，默认提示信息消失消失，
                 
                    username.style.borderColor = '#ccc';
//                  
                    if(code1.value===''||code2.value===''){
                    	alert('请输入验证码')
                    }else{
                    	password.focus()
                    }
//
//                 
//                 
               

                }
            }
        }

        xhr.open('get','../api/check.php?username='+_username,true);
        
        // 如果用户名电话或邮箱格式不合法
        
        var reg_phone = /^(13[0-9]|15[012356789]|18[0-9]|17[678]|14[57])[0-9]{8}$/;
        isok =reg_phone.test(_username);
        //格式不正确时不发送请求,正确才发送验证
        if(!isok){
            // 格式不正确时，边框变红
            username.style.borderColor = '#f00';
            //提示信息更新
           alert('请输入正确的手机号');
            //信息颜色变红
//          res.style.color = '#f00';
        
           
            
        }else{
            // 格式正确时发送请求验证
            xhr.send();
            // 格式正确的时候清空提示信息
       
        }
 
        
    }
        
    //用户名框光标聚焦时触发
    username.onfocus = ()=>{
        // 边框变大红
        username.style.borderColor = '#900';
        // 提示信息恢复默认
   
        // 颜色恢复默认
     
    }

    // 密码框光标聚焦时
    // 获取密码提示信息对应的span
   
    password.onfocus = ()=>{
        // 边框变大红
        password.style.borderColor = '#900';
        
    }

    // 密码框光标失去焦点时
    password.onblur = ()=>{
        // 判断密码长度为6-25
         _password = password.value;
        
        if(_password===''){
            password.style.borderColor = '#f00';
          alert('请输入密码！');
          
        }else if(!/^\S{6,25}$/.test(_password)){
            password.style.borderColor = '#f00';
        	alert('密码长度只能在6-25位之间！');
           
        }else{
            // 密码格式正确时，
     
            password.style.borderColor = '#ccc';
            //跳到确认密码框
            confirm.focus();
        }
       
    }


    // 确认密码框光标聚焦时
    // 获取确认密码框提示信息对应的span 
    
    confirm.onfocus = ()=>{
        // 边框变大红
        confirm.style.borderColor = '#900';
      
    }


    // 确认密码框光标失去焦点时
    confirm.onblur = ()=>{
        _confirm = confirm.value;
        if(_confirm===''){
            confirm.style.borderColor = '#f00';
           alert('请再次确认密码！');
     
        }else if(_confirm!==_password){
            confirm.style.borderColor = '#f00';
            alert('两次输入不一致！');
        
        }else{
            //确认密码框正确
         
            confirm.style.borderColor = '#ccc';
            // 跳到勾选邀请码
            
        }
    }


   




    //点击注册
    let btn_reg = document.querySelector('.btn_reg');
    btn_reg.onclick = ()=>{

        let xhr = new XMLHttpRequest();
        xhr.onload = ()=>{
            if(status.indexOf(xhr.status) >= 0){
                console.log(xhr.responseText);
                alert('注册成功');
                location.href = 'login.html';
            }
        }
        xhr.open('post','../api/register.php',true);

    // 设置请求头，以便后端接收post数据
        xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');
    // 如果用户名是否为空
        if(_username==undefined){
            username.focus();
            username.style.borderColor = '#f00';
           alert('请输入正确的手机号');
            
        }else if(isok){
        // 判断用户名格式是否正确
            username.style.borderColor = '#ccc';
            if(code1.value!==''&&code2.value!==''){
           		password.focus()
                if(_password!== undefined){   
                 // 判断密码是否为空
                    if(/^\S{6,25}$/.test(_password)){
                         //判断密码是否为6-25位的格式 
                        if(_confirm==_password){
                            // 判断两次密码是否一致
                            if(xieyi.checked){
                            	console.log(_username,_password)
                                // 同意协议即可发起注册请求
                                xhr.send(`username=${_username}&password=${_password}`); 
                            }else{
                                alert('请勾选同意协议！');
                            }

                        }
                        
                    }
                    
                }
            }else{
            	alert('请输入验证码')
            }
        } 
     
    }
        

        

    

          













    });





})();