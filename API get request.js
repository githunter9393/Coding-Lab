const express = require("express");
const https = require("https");

const app = express();

app.get("/", function(req, res){

    const url = "https://api.weathermap.org/data/2.5/weather?q=london&appid=1234&units=metric"  // the website server 
   
    https.get(url, function(response){
       console.log(response.statusCode);

       response.on("data", function(data){
          const weatherData = JSON.parse(data)
          const temp = weatherData.main.temp
          const weatherDescription = weatherData.weather[0].description
          const icon = weatherData.weather[0].icon
          const imageURL = "https://weathermap.org/img/wn" + icon + "@2x.png"
          res.write("<p>The weather is currently" + weatherDescription + "<p>");
          res.write("<h1>The temperature in london is" + temp + "degrees celcius.</h1>");
          res.write("<img src=" + imageURL +>");
          res.send()


  
         })
      })

   })
