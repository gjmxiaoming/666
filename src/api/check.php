<?php
    // 引入connect.php
    include 'connect.php';
    /*
        接口功能：
        所需参数：
            * username
            
     */
    
    $username = isset($_GET['username']) ? $_GET['username'] : null; 
 

    // 查找数据库中是否
    $sql = "select * from user where username='$username'";

    // 执行sql语句
    $result = $conn->query($sql);

    if($result->num_rows>0){
        echo "no";
    }else{
        echo "yes";
    }

?>