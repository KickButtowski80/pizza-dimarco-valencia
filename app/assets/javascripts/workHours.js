$(document).on('turbolinks:load', function() {
        var d = new Date();
        var dayInNumber = d.getDay();
         var myClasses = document.getElementsByClassName("workHours");
         var selectList;
         var option;
        // var myDiv = document.getElementsByTagName("span")
        //Create array of options to be added
        var array = 
        ["Sunday 11AM–10PM","Monday 11AM–10PM" ,"Tuesday 11AM–10PM","Wednesday 11AM–10PM","Thursday 11AM–10PM","Friday 11AM–11PM","Saturday 11AM–11PM"];
        for (var i = 0; i < myClasses.length; i++) {
                    //Create and append select list
            selectList = document.createElement("select");
            selectList.id = "mySelect";
            selectList.class = 'mytextwithicon';
            myClasses[i].appendChild(selectList);
        }

        
        //Create and append the options
        for (var i = dayInNumber; i < array.length; i++) {
            option = document.createElement("option");
            option.value = array[i];
            option.text = array[i];
            selectList.appendChild(option);
        }
        
        for (var i = 0 ; i < dayInNumber; i++) {
            option = document.createElement("option");
            option.value = array[i];
            option.text = array[i];
            selectList.appendChild(option);
        }

});
