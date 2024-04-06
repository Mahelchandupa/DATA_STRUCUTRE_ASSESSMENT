document.addEventListener('DOMContentLoaded', function() {
    const canvas = document.getElementById('gameCanvas');
    const ctx = canvas.getContext('2d');
    const submitGuessButton = document.getElementById('submitGuess');
    const distanceGuessInput = document.getElementById('distanceGuess');
    const feedbackElement = document.getElementById('feedback');
    const selectedCityInfo = document.getElementById('selectedCityInfo');
    const gameInstruction = document.getElementById('gameInstruction');
    const usernameInput = document.getElementById('usernameInput');
    const usernameSubmit = document.getElementById('usernameSubmit');
    const guessSection = document.getElementById('guessSection');


    let distances = {};
    let systemSelectedCity = '';
    let playerSelectedCity = '';
    let playerName = '';

    const cities = [
        { name: 'A', x: 100, y: 50 },
        { name: 'B', x: 100, y: 250 },
        { name: 'C', x: 300, y: 350 },
        { name: 'D', x: 400, y: 150 },
        { name: 'E', x: 500, y: 270 },
        { name: 'F', x: 600, y: 400 },
        { name: 'G', x: 670, y: 120 },
        { name: 'H', x: 800, y: 250 },
        { name: 'I', x: 970, y: 350 },
        { name: 'J', x: 1000, y: 50 },
    ];

    usernameSubmit.addEventListener('click', function() {
        playerName = usernameInput.value.trim();
        if (playerName) {
            // Hide username section and show guess section
            document.getElementById('usernameSection').style.display = 'none';
            guessSection.style.display = 'block';
            initGame();
        } else {
            alert('Please enter your name to start the game.');
        }
    });

    function assignRandomDistances() {
        cities.forEach(city1 => {
            distances[city1.name] = {};
            cities.forEach(city2 => {
                if (city1.name !== city2.name) {
                    const distance = Math.floor(Math.random() * (50 - 5 + 1) + 5);
                    distances[city1.name][city2.name] = distance;
                }
            });
        });
    }

    function selectRandomCity() {
        const index = Math.floor(Math.random() * cities.length);
        systemSelectedCity = cities[index].name;
        selectedCityInfo.textContent = `System Selected City: ${systemSelectedCity}`;
    }

    function drawCitiesAndDistances() {
        ctx.clearRect(0, 0, canvas.width, canvas.height); // Clear the canvas

        // Draw all the connections and distances first
        for (let i = 0; i < cities.length; i++) {
            for (let j = i + 1; j < cities.length; j++) {
                const city1 = cities[i];
                const city2 = cities[j];
                const distance = distances[city1.name][city2.name];

                // Draw the line between cities
                ctx.beginPath();
                ctx.moveTo(city1.x, city1.y);
                ctx.lineTo(city2.x, city2.y);
                ctx.strokeStyle = '#ddd';
                ctx.stroke();

                // Draw the distance text in the middle of the line
                const midX = (city1.x + city2.x) / 2;
                const midY = (city1.y + city2.y) / 2;
                ctx.fillStyle = 'black';
                ctx.font = '12px Arial';
                ctx.fillText(distance, midX, midY);
            }
        }

        // Now draw the cities on top
        cities.forEach(city => {
            ctx.fillStyle = city.name === systemSelectedCity ? 'green' : (city.name === playerSelectedCity ? 'red' : 'blue');
            ctx.beginPath();
            ctx.arc(city.x, city.y, 15, 0, Math.PI * 2);
            ctx.fill();
            ctx.fillStyle = 'white';
            ctx.font = '14px Arial';
            ctx.fillText(city.name, city.x - 5, city.y + 5);
        });
    }


    canvas.addEventListener('click', function(event) {
        const rect = canvas.getBoundingClientRect();
        const x = event.clientX - rect.left;
        const y = event.clientY - rect.top;
        cities.forEach(city => {
            const distance = Math.sqrt((x - city.x) ** 2 + (y - city.y) ** 2);
            if (distance < 15) {
                playerSelectedCity = city.name;
                gameInstruction.textContent = `You selected ${city.name}. Guess the distance from ${systemSelectedCity} to ${city.name}.`;
                drawCitiesAndDistances(); // Redraw to show the selected city
            }
        });
    });

    submitGuessButton.addEventListener('click', function() {
        const guessedDistance = parseInt(distanceGuessInput.value.trim(), 10);

        if (playerSelectedCity && !isNaN(guessedDistance) && playerSelectedCity !== systemSelectedCity) {
            // Assuming dijkstra is your chosen algorithm and it's correctly implemented
            
            const actualDistance = dijkstra(systemSelectedCity, playerSelectedCity);

            if (guessedDistance === actualDistance) {
                feedbackElement.textContent = `Correct! The shortest distance from ${systemSelectedCity} to ${playerSelectedCity} is indeed ${actualDistance}.`;
                const gameData = {
                    playerName: playerName, // Replace with actual player name input from user
                    fromCity: systemSelectedCity,
                    toCity: playerSelectedCity,
                    guessedDistance: guessedDistance,
                    actualDistance: actualDistance,
                    isCorrect: true
                };
                fetch('http://localhost:3000/game-result', {
                    method: 'POST',
                    headers: {
                        'Content-Type': 'application/json'
                    },
                    body: JSON.stringify(gameData)
                })
                    .then(response => response.text())
                    .then(data => console.log(data))
                    .catch((error) => console.error('Error:', error));
            } else {
                feedbackElement.textContent = `Incorrect. Your guess was ${guessedDistance}, but the actual shortest distance from ${systemSelectedCity} to ${playerSelectedCity} is ${actualDistance}.`;
            }

            // Reset for the next guess
            playerSelectedCity = '';
            distanceGuessInput.value = '';
            drawCitiesAndDistances(); // Update the visualization if necessary
        } else {
            feedbackElement.textContent = 'Please select a city (not the system-selected city) and enter a valid numeric guess.';
        }
    });



    function dijkstra(source, target) {
        const Q = new Set();
        const dist = {};
        const prev = {};

        cities.forEach(city => {
            dist[city.name] = Infinity;
            prev[city.name] = undefined;
            Q.add(city.name);
        });

        dist[source] = 0;

        while (Q.size) {
            let u = null;

            Q.forEach(cityName => {
                if (u === null || dist[cityName] < dist[u]) {
                    u = cityName;
                }
            });

            if (u === target) {
                break; // Stop if the target has been reached
            }

            Q.delete(u);

            for (const neighbor in distances[u]) {
                let alt = dist[u] + distances[u][neighbor];
                if (alt < dist[neighbor]) {
                    dist[neighbor] = alt;
                    prev[neighbor] = u;
                }
            }
        }

        return dist[target]; // Return the shortest distance to the target
    }



    function initGame() {
        assignRandomDistances();
        selectRandomCity();
        drawCitiesAndDistances();
    }

    initGame();
});
