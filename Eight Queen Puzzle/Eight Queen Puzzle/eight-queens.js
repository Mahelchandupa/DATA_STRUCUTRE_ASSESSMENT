document.addEventListener('DOMContentLoaded', () => {
  const chessboardElement = document.getElementById('chessboard');
  const usernameInput = document.getElementById('username');
  const resetButton = document.getElementById('resetButton');

  let grid = [];
  let queens = [];

  const resetBoard = () => {
    chessboardElement.innerHTML = '';
    grid = [];
    queens = [];
    initializeBoard();
  };

  resetButton.addEventListener('click', resetBoard);


  function recordWin(username, queenPositions) {
    fetch('http://localhost:3000/win', {
      method: 'POST',
      headers: {
        'Content-Type': 'application/json',
      },
      body: JSON.stringify({username, queenPositions}),
    })
      .then(response => response.text())
      .then(message => {
        alert(message);
        resetBoard();
      })
      .catch((error) => {
        console.error('Error:', error);
        alert('An error occurred while recording the win.');
      });
  }


  const isThreatened = (row, col) => {
    for (let i = 0; i < queens.length; i++) {
      if (queens[i][0] === row || queens[i][1] === col ||
        Math.abs(queens[i][0] - row) === Math.abs(queens[i][1] - col)) {
        return true;
      }
    }
    return false;
  };

  const updateButtonLabel = (row, col) => {
    grid[row][col].innerText = '♕';
    grid[row][col].style.fontSize = '32px';
    queens.push([row, col]);

    if (queens.length === 8) {
      const username = usernameInput.value.trim();
      queens.sort((a, b) => a[0] - b[0]);
      recordWin(username, queens);
    }
  };

  const initializeBoard = () => {
    for (let row = 0; row < 8; row++) {
      const rowArray = [];
      for (let col = 0; col < 8; col++) {
        const button = document.createElement('button');
        button.addEventListener('click', () => {
          const username = usernameInput.value.trim();
          if (!username) {
            alert('Please enter a valid username before placing a queen.');
            return;
          }
          if (isThreatened(row, col)) {
            alert('Cannot place a queen that threatens another queen! Resetting board.');
            resetBoard();
          } else {
            console.log(`Button clicked at: Row ${row}, Col ${col}`);
            updateButtonLabel(row, col);
          }
        });
        chessboardElement.appendChild(button);
        rowArray.push(button);
      }
      grid.push(rowArray);
    }
  };
  module.exports = { isThreatened};
  initializeBoard();
});
