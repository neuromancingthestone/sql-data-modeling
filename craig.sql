DROP DATABASE craig;
CREATE DATABASE craig;
\c craig;

CREATE TABLE user_list(
    id SERIAL PRIMARY KEY,
    uname TEXT NOT NULL,
    phone TEXT,
    email TEXT NOT NULL,
    region TEXT NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    region TEXT NOT NULL,
    category TEXT NOT NULL,
    user_id INT NOT NULL,
    descrip TEXT
);

ALTER TABLE
    post ADD CONSTRAINT "post_user_id_foreign" FOREIGN KEY(user_id) REFERENCES user_list("id");