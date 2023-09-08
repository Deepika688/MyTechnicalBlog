function registerUser(){
    
    
    let userName=$("input[name='user_name']").val();
    let userEmail=$("input[name='user_email']").val();
    let userpassword=$("input[name='user_password']").val();
    let gender=$("input[name='gender']:checked").val();
    let about=$("textarea[name='about']").val();
    let check=$("input[name='check']").is(":checked");
    
    console.log(check);
    if(userName===""||userEmail===""||userpassword===""||about===""||!$("input[name='gender']").is(":checked")||!check){
         Swal.fire("Error","All Fields Are Mendatory !","error");
         return;
    }
    if(check===true)
        check="checked";
    else
        check==="unchecked";
    
    let obj={
        user_name:userName,
        user_email:userEmail,
        user_password:userpassword,
        gender:gender,
        about:about,
        check:check
    };
    console.log(obj);
     
    $.post("RegisterServlets",obj,(responseText)=>{
        console.log(responseText);
        responseText=responseText.trim();
        
        
        //hariomes code
        
        if(responseText==="done"){
            Swal.fire("Success","Redirecting to the login page","success");
            window.setTimeout(()=>{
                window.location="Login_Page.jsp"
            },2000);
        }
        else{
           Swal.fire("error","DB Error","error");
        }
        
        
        
        
        
    
    });
}



