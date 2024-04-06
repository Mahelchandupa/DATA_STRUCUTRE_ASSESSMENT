import { expect } from 'chai';

// Import the functions to be tested
const { isThreatened, updateButtonLabel } = require('./eight-queens');

// Test suite for the isThreatened function
describe('isThreatened', () => {
  test('should return true when a queen is threatened by another queen', () => {
    const queens = [[0, 0], [1, 2]]; // Example queens positions
    const row = 1;
    const col = 2;
    expect(isThreatened(row, col, queens)).toBe(true);
  });

  test('should return false when a queen is not threatened by another queen', () => {
    const queens = [[0, 0], [1, 2]]; // Example queens positions
    const row = 2;
    const col = 3;
    expect(isThreatened(row, col, queens)).toBe(false);
  });
});

// Test suite for the updateButtonLabel function
describe('updateButtonLabel', () => {
  test('should update the button label and add queen position to queens array', () => {
    const row = 2;
    const col = 3;
    const queens = [[0, 0], [1, 2]]; // Example queens positions
    const grid = [
      [button1, button2, button3],
      [button4, button5, button6],
      [button7, button8, button9]
    ]; // Example grid array
    updateButtonLabel(row, col, queens, grid);
    expect(queens).toEqual([[0, 0], [1, 2], [2, 3]]);
    expect(grid[row][col].innerText).toBe('♕');
    expect(grid[row][col].style.fontSize).toBe('32px');
  });
});
