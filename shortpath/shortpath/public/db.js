// db.js

const mysql = require('mysql');

const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'gamecenter'
});

connection.connect(error => {
    if (error) {
        console.error('An error occurred while connecting to the DB');
        throw error;
    }
    console.log('Connected to database successfully!');
});

function saveGameResult(playerName, fromCity, toCity, guessedDistance, actualDistance, isCorrect) {
    const query = `
        INSERT INTO short_path_game_results (player_name, from_city, to_city, guessed_distance, actual_distance, correct_answer)
        VALUES (?, ?, ?, ?, ?, ?);
    `;

    connection.query(query, [playerName, fromCity, toCity, guessedDistance, actualDistance, isCorrect], (error, results) => {
        if (error) throw error;
        console.log('Game result saved:', results.insertId);
    });
}


module.exports = { saveGameResult };
