const cells = document.querySelectorAll('.cell');
const winningCombos = [
  [0, 1, 2], [3, 4, 5], [6, 7, 8],
  [0, 3, 6], [1, 4, 7], [2, 5, 8],
  [0, 4, 8], [2, 4, 6]
];
let currentPlayer = 'X';
let gameOver = false;

cells.forEach(cell => {
  cell.addEventListener('click', handleClick, { once: true });
});

function handleClick(e) {
  const cell = e.target;
  if (cell.textContent !== '' || gameOver) return;

  placeMark(cell, currentPlayer);
  if (checkWin(currentPlayer)) {
    gameOver = true;
    const playerName = prompt("Congratulations! You won! Please enter your name:");
    if (playerName !== null && playerName !== "") {
        saveResponse(playerName, currentPlayer);
    }
    alert(`${currentPlayer} wins!`);
    return;
  } else if (isDraw()) {
    gameOver = true;
    const playerName = prompt("It's a draw! Please enter your name:");
    if (playerName !== null && playerName !== "") {
        saveResponse(playerName, "Draw");
    }
    alert('It\'s a draw!');
    return;
  }

  currentPlayer = currentPlayer === 'X' ? 'O' : 'X';
  if (currentPlayer === 'O' && !gameOver) {
    computerTurn();
  }
}

function saveResponse(playerName, response) {
  const xhr = new XMLHttpRequest();
  xhr.open("POST", "http://localhost:3000/saveResponse");
  xhr.setRequestHeader("Content-Type", "application/json");
  xhr.onreadystatechange = function () {
      if (xhr.readyState === XMLHttpRequest.DONE) {
          if (xhr.status === 200) {
              console.log("Response saved successfully");
          } else {
              console.error("Error saving response:", xhr.responseText);
          }
      }
  };
  const data = JSON.stringify({ player_name: playerName, correct_response: response });
  xhr.send(data);
}


function placeMark(cell, player) {
  cell.textContent = player;
}

function checkWin(player) {
  return winningCombos.some(combo => {
    return combo.every(index => {
      return cells[index].textContent === player;
    });
  });
}

function isDraw() {
  return [...cells].every(cell => {
    return cell.textContent !== '';
  });
}

function computerTurn() {
  let bestScore = -Infinity;
  let bestMove;

  // Iterate over empty cells
  [...cells].forEach(cell => {
    if (cell.textContent === '') {
      // Try placing 'O' in the empty cell
      cell.textContent = currentPlayer;
      // Calculate the score for this move
      let score = minimax(cells, 0, false);
      // Undo the move
      cell.textContent = '';
      // Update the best move and score if necessary
      if (score > bestScore) {
        bestScore = score;
        bestMove = cell;
      }
    }
  });

  // Place the 'O' in the best move
  placeMark(bestMove, currentPlayer);
  
  // Check if the computer wins
  if (checkWin(currentPlayer)) {
    gameOver = true;
    alert(`${currentPlayer} wins!`);
    return;
  } else if (isDraw()) {
    gameOver = true;
    alert('It\'s a draw!');
    return;
  }
  
  currentPlayer = 'X';
}

// Minimax algorithm for AI decision making
function minimax(cells, depth, isComputer) {
  if (checkWin('O')) {
    return 1;
  } else if (checkWin('X')) {
    return -1;
  } else if (isDraw()) {
    return 0;
  }

  if (isComputer) {
    let bestScore = -Infinity;
    [...cells].forEach(cell => {
      if (cell.textContent === '') {
        cell.textContent = 'O';
        let score = minimax(cells, depth + 1, false);
        cell.textContent = '';
        bestScore = Math.max(score, bestScore);
      }
    });
    return bestScore;
  } else {
    let bestScore = Infinity;
    [...cells].forEach(cell => {
      if (cell.textContent === '') {
        cell.textContent = 'X';
        let score = minimax(cells, depth + 1, true);
        cell.textContent = '';
        bestScore = Math.min(score, bestScore);
      }
    });
    return bestScore;
  }
}