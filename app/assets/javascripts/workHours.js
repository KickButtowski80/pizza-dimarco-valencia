$( document ).ready(function() {
        var d = new Date();
        var dayInNumber = d.getDay();
        var myDiv = document.getElementById("myDiv");
        
        //Create array of options to be added
        var array = 
        ["Sunday 11AM–10PM","Monday 11AM–10PM" ,"Tuesday 11AM–10PM","Wednesday 11AM–10PM","Thursday 11AM–10PM","Friday 11AM–11PM","Saturday 11AM–11PM"];
        
        //Create and append select list
        var selectList = document.createElement("select");
        selectList.id = "mySelect";
        selectList.class = 'mytextwithicon';
        myDiv.appendChild(selectList);
        
        //Create and append the options
        for (var i = dayInNumber; i < array.length; i++) {
            var option = document.createElement("option");
            option.value = array[i];
            option.text = array[i];
            selectList.appendChild(option);
        }
        
        for (var i = 0 ; i < dayInNumber; i++) {
            var option = document.createElement("option");
            option.value = array[i];
            option.text = array[i];
            selectList.appendChild(option);
        }

});
