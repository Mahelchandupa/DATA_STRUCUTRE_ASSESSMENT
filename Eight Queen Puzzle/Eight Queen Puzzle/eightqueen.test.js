const { isThreatened} = require('./eight-queens');


describe('isThreatened function', () => {
    test('should detect when a queen is threatened', () => {
        const queens = [[0, 0], [1, 2], [3, 4]]; // Setup some positions
        expect(isThreatened(2, 3, queens)).toBe(true);
    });
});
