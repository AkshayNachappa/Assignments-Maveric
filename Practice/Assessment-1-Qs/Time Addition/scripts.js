function reset(){
    document.getElementById("dummy").value = 0;
    document.getElementById("daysReq").value="";
    document.getElementById("res").innerHTML="";
    document.getElementById("res").style.border = "none";

}

function calc(){
    var currDate = new Date();
    var x = parseInt(document.getElementById("daysReq").value);
    currDate.setDate(currDate.getDate()+x);
    currDate = String(currDate).slice(0,15)
    border: ;
    var res = document.getElementById("res")
    res.innerHTML = 'Deadline is: '+currDate;
    res.style.border = "red solid";
    document.getElementById("dummy").value = 0;
    
}

