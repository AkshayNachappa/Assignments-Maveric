var count = 0;
var obj = [];
function reset() {
    for(var i=0;i<count;i++)
        document.getElementById("table").deleteRow(1);
    count = 0; 
    document.getElementById("taskID").value=null
    document.getElementById("dateTask").value=null
     

    
}


function submit() {
    
    
    count++;
    var table = document.getElementById("table");
    var taskID = document.getElementById("taskID");
    var dateTask = document.getElementById("dateTask");
    if(taskID.value.length===0||dateTask.value.length===0){
        document.getElementById("error_message_here").innerHTML = "Both Values are complusory";
        taskID.value=null;
        dateTask.value=null;
        return;

    }
    document.getElementById("error_message_here").innerHTML = "";
    var p = parseInt(taskID.value)
    var q = dateTask.value
    newQ = q.slice(0,10).replace(/-/g,"");
    console.log(newQ);
    var x = {task:p,date:newQ}
    obj.push(x);
    obj.sort((a,b)=>(a.date-b.date));
    var len = obj.length;
    // for(var i=0;i<len;i++){
    //     if(obj[i+1].date==obj[i].date){
    //         if(obj[i+1].task>obj[i].task){
    //         var temp = obj[i];
    //         obj[i] = obj[i+1];
    //         obj[i+1] = temp;
    //         }
    //     }
    // } 

    taskID.value = dateTask.value=null;
    for(var i=len;i>0;i--){
        var row = table.insertRow(1);
        var cell1 = row.insertCell(0);
        var cell2 = row.insertCell(1);
        cell1.innerHTML = obj[i-1].task;
        let x = obj[i-1].date;
        x = [x.slice(6),x.slice(4,6),x.slice(0,4)].join('-');
        cell2.innerHTML = x;
    }
    var rowCount = table.rows.length;
    for(var i=len+1;i<=rowCount;i++)
        table.deleteRow(len+1);
    
    

    
    
}