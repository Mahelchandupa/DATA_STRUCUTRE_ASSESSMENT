const express = require('express');
const mysql = require('mysql');
const bodyParser = require('body-parser');
const cors = require('cors');


const app = express();
const port = 3000;

app.use(cors());
app.use(bodyParser.json());

const connection = mysql.createConnection({
  host: 'localhost',
  user: 'root',
  password: '',
  database: 'eight_queen'
});

connection.connect();

app.post('/win', (req, res) => {
  const {username, queenPositions} = req.body;

  const serializedPositions = JSON.stringify(queenPositions);

  const userQuery = 'SELECT user_id FROM users WHERE username = ? LIMIT 1';
  connection.query(userQuery, [username], (userErr, users) => {

    let userId;
    if (!users || users.length === 0) {
      const insertUserQuery = 'INSERT INTO users (username) VALUES (?)';
      connection.query(insertUserQuery, [username], (insertErr, insertResult) => {
        userId = insertResult.insertId;
        checkAndRecordGameWin(userId, serializedPositions, res);
      });
    } else {
      checkAndRecordGameWin(users[0].user_id, serializedPositions, res);
    }
  });
});

function checkAndRecordGameWin(userId, serializedPositions, res) {
  const checkWinQuery = 'SELECT game_id FROM games WHERE queen_positions = ? LIMIT 1';
  connection.query(checkWinQuery, [serializedPositions], (err, games) => {
    if (err) {
      console.error(err);
      return res.status(500).send('An error occurred ' + err);
    }
    if (games && games.length > 0) {
      res.status(401).send("This solution has already been recognized.");
      console.log(`This solution has already been recognized. ${serializedPositions}`);
    } else {
      const countGamesQuery = 'SELECT COUNT(*) AS gameCount FROM games';
      connection.query(countGamesQuery, (err, results) => {
        if (err) {
          console.error(err);
          return res.status(500).send('An error occurred. ' + err);
        }

        const {gameCount} = results[0];
        if (gameCount >= 11) {
          const resetUsersQuery = 'DELETE FROM games';
          connection.query(resetUsersQuery, (err) => {
            if (err) {
              console.error(err);
              return res.status(500).send('An error occurred. ' + err);
            }

            const resetGamesQuery = 'DELETE FROM users';
            connection.query(resetGamesQuery, (err) => {
              if (err) {
                console.error(err);
                return res.status(500).send('An error occurred. ' + err);
              }

              res.send("Congratulations all the solutions are discovered. The database is reset.");
              console.log("Database reset because all solutions were discovered.");
            });
          });
        } else {
          const insertWinQuery = 'INSERT INTO games (user_id, queen_positions) VALUES (?, ?)';
          connection.query(insertWinQuery, [userId, serializedPositions], () => {
            res.status(200).send("The solution saved successfully");
            console.log(`The solution saved successfully. ${serializedPositions}`);

          });
        }
      });
    }
  });
}


app.listen(port, () => {
  console.log(`Server running on port ${port}`);
});
