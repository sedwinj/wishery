if ! psql -d wishlister_dev -c '\q'; then
    psql -c "CREATE DATABASE wishlister_dev";
fi

if ! psql postgresql://wishlister_dev:aHTCesWf8HTwo2fe9N2I09qQmdLEBHFOv9YYaWYLbSKy0ridej@localhost:5432 -c '\q'; then
    psql -c "CREATE USER wishlister_dev WITH PASSWORD 'aHTCesWf8HTwo2fe9N2I09qQmdLEBHFOv9YYaWYLbSKy0ridej'"
fi

echo psql
psql -d wishlister_dev -f CreateTables.sql
psql -d wishlister_dev -f PopulateDev.sql