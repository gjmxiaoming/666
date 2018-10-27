/* 

*/




;(function(){
    document.addEventListener('DOMContentLoaded',function(){

        let name = document.querySelector('#login_name');console.log(name)
        let psd = document.querySelector('#login_password ');console.log(psd)
        let btn = document.querySelector('.go');console.log(btn)
        // 点击登录
        btn.onclick = ()=>{

            let _name = name.value;
            let _psd = psd.value;
          
            let xhr = new XMLHttpRequest();
            let status = [200,304];
            xhr.onload = ()=>{
                if(status.indexOf(xhr.status)>=0){
                    if(xhr.responseText==='success'){console.log(555)
                        location.href = 'list.html';
                    }else if(xhr.responseText === 'fail'){console.log(666)
                       alert('用户名或密码错误！')
                    }
                }
            }

            xhr.open('post','../api/login.php',true);
            // 设置请求头，以便后端接收post数据
            xhr.setRequestHeader('Content-Type','application/x-www-form-urlencoded');


            if(_name==''){
                name.style.borderColor = '#ccc';
                name.style.color = '#ccc';
            }else{
                   
                    name.style.color = '#F8A120';
                    if(_psd==''){
                        alert('请输入密码');
                    }else{
                        psd.style.color = '#F8A120';
                        
                     	xhr.send(`name=${_name}&psd=${_psd}`);
                        
                    }
            } 

        }

    // 用户名框聚焦
        name.onfocus = ()=>{
            name.style.borderColor = '#F8A120';
            name.style.color = '#F8A120';
           
        }
        //用户名框失去焦点 
        name.onblur =()=>{
            name.style.borderColor = '#ccc';
            name.style.color = '#ccc';
        }
       // 密码框聚焦
        psd.onfocus = ()=>{
            psd.style.borderColor = '#F8A120';
            psd.style.color = '#F8A120';
         
        }
        // 密码框失去焦点
        psd.onblur = ()=>{
            psd.style.borderColor = '#ccc';
            psd.style.color = '#ccc';
        }




        
    });

        









})();