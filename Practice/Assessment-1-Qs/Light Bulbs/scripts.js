function toggle(){
    var bulb = document.getElementById("bulb");
    var res = document.getElementById("res");
    if(bulb.src.match("bulbOn")){
        bulb.src = "images/bulbOff.jpg";
        res.innerHTML = "Bulb Off"

    }
    else{
        bulb.src = "images/bulbOn.jpg"
        res.innerHTML = "Bulb On"
    }
}