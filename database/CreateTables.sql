/*
 * This file contains all commands required to create the necessary tables from
 * scratch.
 */

CREATE TABLE IF NOT EXISTS list (
    id INT,
    name VARCHAR(50) NOT NULL,
    description TEXT,
    PRIMARY KEY(id)
);

CREATE TABLE IF NOT EXISTS item (
    id INT,
    list_id INT,
    name VARCHAR(50) NOT NULL UNIQUE,
    completed BOOLEAN NOT NULL DEFAULT FALSE,
    PRIMARY KEY (id, list_id),
    FOREIGN KEY (list_id) REFERENCES List(id)
);
