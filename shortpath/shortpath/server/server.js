// server.js
const express = require('express');
const bodyParser = require('body-parser');
const cors = require('cors')
const { saveGameResult } = require('../public/db');

const app = express();

// Middleware to parse JSON bodies
app.use(cors())
app.use(bodyParser.json());

// Serve static files (like your client-side HTML, CSS, JS)
app.use(express.static('public'));

// Endpoint to handle game-result submissions
app.post('/game-result', (req, res) => {
    const { playerName, fromCity, toCity, guessedDistance, actualDistance, isCorrect } = req.body;

    // Only save the game result if the answer is correct
    if (isCorrect) {
        saveGameResult(playerName, fromCity, toCity, guessedDistance, actualDistance, isCorrect);
    }

    // Respond to the client
    res.json({ message: "Game result processed." });
});

// Start the server
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
    console.log(`Server is running on port ${PORT}`);
});
