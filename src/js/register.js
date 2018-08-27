
require(['config'],function(){

	require(['jquery','bootstrap','RL_header','register_main','footer'],function($){
        
        $.ajax({ 
            type : "GET", //提交方式 
            url : "../api/connect.php",//路径 
            data : { 
             "org.id" : "${org.id}"
            },//数据，这里使用的是Json格式进行传输 
            success : function(res) {
                console.log(666);
            } 
           }); 
    });
    
});