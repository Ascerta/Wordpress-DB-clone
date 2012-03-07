=== Warning ===
Important! This script will overwrite and modify your database. Use with extreme care. Always test
in a safe environment properly. These scripts come with no support at all. If you loose your data we
take no responsibility. 

=== About ===
These scripts are intended to allow you to clone a live Wordpress database to a development or staging 
environment. There are two stages:
Firstly, a dump is taken of the live database and imported into the development database
Secondly, a search and replace is carried out on the dev/staging database so that the hostnames are correct 
for your dev environment.

**Only databases are cloned. Files and directories will need to be kept in sync via other means.**

As mysqldump is used to clone your original database it may prove slow for a large or busy server. 
You may want to set up replication or use a different method for getting your clone of the database. 

=== Usage ===
You will initially need to set up a database for the destination. The script will drop any tables that exist
and need updating.

Edit the values at the top of the dblive2stage.sh file to reflect your environment's settings.
Call the dblive2stage.sh script from the command line to initiate the database clone and rename.
N.B no warnings or confirmations are presented to you *test before you use it for real*.

If you can't connect to your database or php isn't being run with the correct settings you may need to 
alter the line starting "php" in "dblive2stage.sh" to include the location of your php.ini file:

-c /path/to/your/php.ini

The php file is called from the command line and not through a webserver.