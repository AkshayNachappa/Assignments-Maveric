        var items_list = [0,1,2,3,4,5,6]
        var gallery_windowsize = 3;
        function moveLeft(){
            items_list.push(items_list.shift())
            document.getElementById("list_a").innerHTML=items_list[0];
            document.getElementById("list_b").innerHTML=items_list[1];
            document.getElementById("list_c").innerHTML=items_list[2];
        }

        function moveRight(){
            items_list.unshift(items_list.pop())
            document.getElementById("list_a").innerHTML=items_list[0];
            document.getElementById("list_b").innerHTML=items_list[1];
            document.getElementById("list_c").innerHTML=items_list[2];


        }

        function displaySelect(id){
            document.getElementById("displayText").innerHTML = document.getElementById(id).innerHTML;

        }
        