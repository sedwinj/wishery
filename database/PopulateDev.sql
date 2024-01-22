DO $$
BEGIN
    RAISE NOTICE 'Populating tables in the dev database...';

    IF EXISTS (SELECT FROM list WHERE name = 'Ingredients') THEN
        INSERT INTO list (name) VALUES ('Ingredients');
    END IF;

    IF EXISTS (SELECT FROM item WHERE list_id = 0) THEN
        INSERT INTO item (list_id, name) VALUES
            (0, 'beef', FALSE),
            (0, 'sauce', TRUE),
            (0, 'lettuce', FALSE),
            (0, 'cheese', TRUE),
            (0, 'pickles', FALSE),
            (0, 'onion', TRUE),
            (0, 'buns', FALSE);
    END IF;

    RAISE NOTICE 'Populating tables in the dev database (complete)';
END
$$