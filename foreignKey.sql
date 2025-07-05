CREATE TABLE "user"(
    id SERIAL PRIMARY KEY,
    username VARCHAR(25) NOT NULL
);

CREATE TABLE post(
    id SERIAL PRIMARY KEY,
    title TEXT NOT NULL,
    user_id INTEGER REFERENCES "user"(id) ON DELETE CASCADE
);

DROP TABLE "user";
DROP TABLE post;

INSERT INTO "user"(username) VALUES 
('Albert Einstein'),
('Isaac Newton'),
('Stephen Hawking'),
('Richard Feynman');

INSERT INTO post(title, user_id) VALUES
('The Theory of Relativity Explained', 4),
('10 Amazing Facts About Black Holes', 2),
('How Vaccines Work: A Simple Guide', 1),
('Mendel and the Basics of Genetics', 4);

SELECT * from "user";
SELECT * from post;

DELETE FROM "user"
    WHERE id = 4;