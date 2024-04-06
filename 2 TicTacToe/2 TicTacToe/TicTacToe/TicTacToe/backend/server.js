const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');

const app = express();
const port = 3000;

// Middleware to parse JSON bodies
app.use(bodyParser.json());
app.use(cors());

// MySQL database connection configuration
const db = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'tictactoe'
});

// Connect to MySQL
db.connect((err) => {
  if (err) {
    throw err;
  }
  console.log('Connected to MySQL');
});

// Route to handle saving player responses
app.post('/saveResponse', (req, res) => {
  const { player_name, correct_response } = req.body;

  // Insert query to save response to the database
  const sql = 'INSERT INTO responses (player_name, correct_response) VALUES (?, ?)';
  const values = [player_name, correct_response];

  db.query(sql, values, (err, result) => {
    if (err) {
      console.error('Error saving response:', err);
      res.status(500).send('Error saving response');
    } else {
      console.log('Response saved successfully');
      res.status(200).send('Response saved successfully');
    }
  });
});

// Start the server
app.listen(port, () => {
  console.log(`Server is running on http://localhost:${3000}`);
});
