if ! psql -d wishlister_dev -c '\q'; then
    psql -c "CREATE DATABASE wishlister_dev";
fi

echo psql
psql -d wishlister_dev -f CreateTables.sql
psql -d wishlister_dev -f PopulateDev.sql