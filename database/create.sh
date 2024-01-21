rm -f dev.db;
cat CreateDB.sql PopulateDev.sql > setup.sql;
sqlite3 dev.db < setup.sql;
rm setup.sql;