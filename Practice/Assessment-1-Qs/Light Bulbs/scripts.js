function onOff1(){
    var bulb1 = document.getElementById("left");
    var bulb2 = document.getElementById("right");
    if(bulb1.src.match("99929e1")){
        bulb1.src = "Insert src of the ON bulb";
        bulb2.src = "Insert src of the OFF bulb";
    }
    else{
        bulb1.src = "Insert src of the OFF bulb"
        bulb2.src = "Insert src of the ON bulb"  
    }
}
function onOff2(){
    var bulb1 = document.getElementById("left");
    var bulb2 = document.getElementById("right");
    if(bulb2.src.match("99929e1")){
        bulb2.src = "Insert src of the ON bulb";
        bulb1.src = "Insert src of the OFF bulb";
    }
    else{
        bulb2.src = "Insert src of the OFF bulb"
        bulb1.src = "Insert src of the ON bulb"  
    }

}