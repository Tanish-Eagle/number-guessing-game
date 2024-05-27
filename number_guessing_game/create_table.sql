CREATE TABLE players(user_id SERIAL PRIMARY KEY, username VARCHAR(30));

CREATE TABLE games(
    game_id SERIAL PRIMARY KEY,
    user_id INTEGER,
    number_of_guesses INTEGER,
    secret_number INTEGER,
    FOREIGN KEY(user_id) REFERENCES players(user_id)
);