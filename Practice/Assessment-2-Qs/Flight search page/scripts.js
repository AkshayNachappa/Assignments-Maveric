
var retRad = document.getElementById("returnRadio");
var hide = document.getElementsByClassName('elHide')[0];
function returnFlight(){
    
    
    if(retRad.checked==true){
        console.log("Yes");
        hide.style.visibility = 'visible';   
    }
    else
    {
        console.log("No");
        hide.style.visibility = 'hidden';
    }
}

function submit(){
    document.getElementById("review").style.border = "solid white";
    document.getElementById("reviewText").innerHTML = "Review";
    document.getElementById("fromSpan").innerHTML="From: "+document.getElementById("from").value;
    document.getElementById("toSpan").innerHTML="To: "+document.getElementById("to").value;
    document.getElementById("departureSpan").innerHTML="Departure: "+document.getElementById("departure").value;
    if(retRad.checked==true && hide.style.visibility === "visible")
        document.getElementById("returnSpan").innerHTML="Return: "+document.getElementById("return").value;
    else
    document.getElementById("returnSpan").innerHTML = "";
}