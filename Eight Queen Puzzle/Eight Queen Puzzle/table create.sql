DROP TABLE IF EXISTS games;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(255) NOT NULL UNIQUE
);

CREATE TABLE games (
    game_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    queen_positions TEXT NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
