const express = require('express');
const app = express();
const bodyParser = require('body-parser');
const mysql = require('mysql');
const cors = require('cors');


const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'random'
});

connection.connect(err => {
    if (err) {
        console.error('Error connecting to database:', err);
        return;
    }
    console.log('Connected to MySQL database');
});

app.use(cors());
app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

// API endpoint to save player's name and correct response
app.post('/saveResponse', (req, res) => {
    const { playerName, correctResponse } = req.body;
    const query = `INSERT INTO responses (player_name, correct_response) VALUES (?, ?)`;
    connection.query(query, [playerName, correctResponse], (error, results) => {
        if (error) {
            console.error('Error saving response:', error);
            res.status(500).json({ error: 'An error occurred while saving response' });
        } else {
            res.status(200).json({ message: 'Response saved successfully' });
        }
    });
});

app.post('/saveGameData', (req, res) => {
    const { playerName, bubbleSortTime, insertionSortTime, mergeSortTime, radixSortTime, shellSortTime, quickSortTime, timSortTime, correctResponse } = req.body;
    console.log(req.body)
    const query = `INSERT INTO game_data (player_name, bubble_sort_time, insertion_sort_time, correct_response, merge_sort_time, radix_sort_time, shell_sort_time, quick_sort_time, tim_sort_time) VALUES (?, ?, ?, ?, ?, ?, ?,?,?)`;
    connection.query(query, [playerName, bubbleSortTime, insertionSortTime, correctResponse, mergeSortTime, radixSortTime, shellSortTime, quickSortTime, timSortTime], (error, results) => {
        if (error) {
            console.error('Error saving game data:', error);
            res.status(500).json({ error: 'An error occurred while saving game data' });
        } else {
            res.status(200).json({ message: 'Game data saved successfully' });
        }
    });
});

app.listen(3000, () => {
    console.log('Server is running on port 3000');
});
