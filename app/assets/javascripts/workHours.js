$(document).on('turbolinks:load', function() {
        var d = new Date();
        var dayInNumber = d.getDay();
         var myClasses = document.getElementsByClassName("workHours");
         var selectList=[];
         var option=[];
        var array = 
        ["Sunday 12AM–8PM","Monday 11AM–9PM" ,"Tuesday 11AM–9PM","Wednesday 11AM–9PM","Thursday 11AM–9PM","Friday 11AM–10PM","Saturday 11AM–10PM"];
        for (var i = 0; i < myClasses.length; i++) {
                    //Create and append select list
            selectList[i] = document.createElement("select");
            selectList[i].setAttribute("class", "mySelect");
            myClasses[i].appendChild(selectList[i]);
            
                        //Create and append the options
            for (var j = dayInNumber; j < array.length; j++) {
                option = document.createElement("option");
                option.value = array[j];
                option.text = array[j];
                selectList[i].appendChild(option);
            }
            
            for (var j = 0 ; j < dayInNumber; j++) {
                option = document.createElement("option");
                option.value = array[j];
                option.text = array[j];
                selectList[i].appendChild(option);
            }
        }
});
