$(document).on('turbolinks:load', function() {
        var d = new Date();
        var dayInNumber = d.getDay();
         var myClasses = document.getElementsByClassName("workHours");
         var selectList=[];
         var option=[];
        // var myDiv = document.getElementsByTagName("span")
        //Create array of options to be added
        var array = 
        ["Sunday 11AM–10PM","Monday 11AM–10PM" ,"Tuesday 11AM–10PM","Wednesday 11AM–10PM","Thursday 11AM–10PM","Friday 11AM–11PM","Saturday 11AM–11PM"];
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
