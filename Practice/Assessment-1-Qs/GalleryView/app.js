        var items_list = [0,1,2,3,4,5,6]
        var gallery_windowsize = 3;
        function moveLeft(){
            var x = items_list.shift();
            items_list.push(x) 
            document.getElementById("list_a").innerHTML=items_list[0];
            document.getElementById("list_b").innerHTML=items_list[1];
            document.getElementById("list_c").innerHTML=items_list[2];
            document.getElementById("displayText").innerHTML = "None Selected"
        }

        function moveRight(){

            items_list.unshift(items_list.pop()) //6,0,1,2,3,4,5
            document.getElementById("list_a").innerHTML=items_list[0];
            document.getElementById("list_b").innerHTML=items_list[1];
            document.getElementById("list_c").innerHTML=items_list[2];
            document.getElementById("displayText").innerHTML = "None Selected"


        }

        function displaySelect(id){
            document.getElementById("displayText").innerHTML = "You Have Selected "+document.getElementById(id).innerHTML+" element";

        }
        
