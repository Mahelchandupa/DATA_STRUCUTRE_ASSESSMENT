const express = require('express');
const mysql = require('mysql');
const cors = require('cors');

const app = express();
const port = 3000;

app.use(cors());
app.use(express.json());

const db = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'gamecenter'
});

db.connect((err) => {
    if (err) throw err;
    console.log('Connected to MySQL database');
})

app.post('/save-index-predict-result', (req, res) => {
  const { binary_name, binary_index_found, binary_time_taken,
          jump_name, jump_index_found, jump_time_taken,
          exponential_name, exponential_index_found, exponential_time_taken,
          fibonacci_name, fibonacci_index_found, fibonacci_time_taken,
          value } = req.body;

  const sql = `INSERT INTO index_predict_search_results (
      value,
      binary_name, binary_index_found, binary_time_taken,
      jump_name, jump_index_found, jump_time_taken,
      exponential_name, exponential_index_found, exponential_time_taken,
      fibonacci_name, fibonacci_index_found, fibonacci_time_taken
      ) VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?)`;

  const values = [
      value,
      binary_name, binary_index_found, binary_time_taken,
      jump_name, jump_index_found, jump_time_taken,
      exponential_name, exponential_index_found, exponential_time_taken,
      fibonacci_name, fibonacci_index_found, fibonacci_time_taken
  ];    

  db.query(sql, values, (err, result) => {
      if (err) {
          console.error('Error recording search time:', err);
          res.status(500).send('Error recording search time');
          return;
      }
      res.send('Saved');
  });
});

app.post('/save-user', (req, res) => {
  const { username } = req.body;
  const sql = `INSERT INTO users (user_name) VALUES (?)`;
  const values = [username];
  db.query(sql, values, (err, result) => { 
    if (err) {
      console.error('Error recording search time:', err);
      res.status(500).send('Error recording search time');
      return;
    }
    res.send('Saved');
  })
})

app.get('/data', (req, res) => {
    const query = 'SELECT binary_time_taken, jump_time_taken, exponential_time_taken, fibonacci_time_taken FROM index_predict_search_results';
  
    // Perform the SQL query
    db.query(query, (error, results) => {
      if (error) {
        console.error('Error retrieving data:', error);
        res.status(500).send('Error retrieving data');
        return;
      }
  
      // Send the retrieved data as a JSON response
      res.json(results);
    });
  });

app.listen(port, () => {
    console.log(`Server is running on port ${port}`);
});