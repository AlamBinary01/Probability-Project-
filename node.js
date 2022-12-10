//connect mysql in express.js?

const mysql = require('mysql');
const express = require('express');
const app = express();
const PORT = // define the PORT for your host

var connection = mysql.createConnection({
    host: 'localhost',
    user: '<MY_USER_NAME>',
    password: '<MY_PASSWORD>',
    database: '<DB_NAME>'
});

connection.connect(function(err) {
  if (err) console.error(err);
  console.log("Connected!");
});

app.get('/db-test', (req, res, next) => {

  var id = // fill in a user_id that you know exists
  var sql = `SELECT * FROM users WHERE id NOT IN ('${id}') `;

  console.log(sql); // confirm you are sending the sql request you believe you should be sending

  connection.query(sql, function (err, results, fields) {
      if (err) console.error(err);
      console.log(`results: ${results}\nfields: ${fields}`);
  });

});

app.listen(PORT);


