#!/bin/sh
rm -rf /var/moodledata/moodledata3
cp -r /var/moodledata/moodledataN /var/moodledata/moodledata3
chmod -R 777 /var/moodledata/moodledata3/
sudo -u postgres dropdb moodle3
sudo -u postgres createdb -O moodleuser moodle3
sudo -u jacob /usr/bin/pg_restore --host 127.0.0.1 --port 5432 --username "moodleuser" --dbname "moodle3" --no-password  --verbose "/home/jacob/backups/moodle3.sql"
# /usr/bin/pg_dump --host 127.0.0.1 --port 5432 --username "moodleuser" --no-password  --format custom --blobs --verbose --file "/home/jacob/backups/moodle3.sql" "moodle3"
# psql --host 127.0.0.1 --port 5432 --username "moodleuser" --dbname "moodle3" --no-password
