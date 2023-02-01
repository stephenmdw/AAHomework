console.log("Hello from the console!");

// Your code here
fetch( "https://api.openweathermap.org/data/2.5/weather?q=London,UK&appid=bcb83c4b54aee8418983c2aff3073b3b")
    .then(response => response.json())
    .then(response => {
        if(response){
                console.log(response)
                console.log('Success!')
        } else {
                console.log('Failure!')
            }
        }
    )

console.log("The AJAX request has been dispatched")

// When does the request get sent?
// When does the response come back?
// What's the current weather in London?
// Did the page refresh?
// How could you use a different HTTP method in your request?