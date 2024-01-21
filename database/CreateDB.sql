CREATE TABLE IF NOT EXISTS List (
    id INT,
    name VARCHAR(50) NOT NULL,
    description TINYTEXT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS Item (
    id INT,
    listId INT,
    name VARCHAR(50) NOT NULL UNIQUE,
    completed BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id, listId),
    FOREIGN KEY (listId) REFERENCES List(id)
);
