var request = require("request");

var daily_options = { method: 'POST',
  url: 'http://localhost:8080/daily',
  headers: 
   { 'cache-control': 'no-cache',
     'content-type': 'application/json' },
  body: { adate: 1473631656137 },
  json: true };

request(daily_options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});



var today_options = { method: 'GET',
  url: 'http://localhost:8080/today',
  headers: 
   {'cache-control': 'no-cache' } };

request(today_options, function (error, response, body) {
  if (error) throw new Error(error);

  console.log(body);
});
