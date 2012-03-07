#! /bin/bash
DESTUSER="username_for_destination_db"
DESTPASS="password_for_destination_db"
DESTDB="name_of_destination_db"
DESTHOST="hostname_of_destination_db"
SOURCEUSER="username_for_source_db"
SOURCEPASS="passowrd_for_source_db"
SOURCEDB="name_of_source_db"
SOURCEHOST="hostname_of_source_db"
SEARCH="look for this string"
REPLACE="replace it with this"

mysqldump -u $SOURCEUSER -p$SOURCEPASS --add-drop-table $SOURCEDB | mysql -p$DESTPASS -u $DESTUSER $DESTDB

# You may also need to pass the location of your php.ini file when you call php
# with the -c <path to php.ini>

php replace.php -h $DESTHOST -u $DESTUSER -p $DESTPASS -r $REPLACE -s $SEARCH -d $DESTDB
