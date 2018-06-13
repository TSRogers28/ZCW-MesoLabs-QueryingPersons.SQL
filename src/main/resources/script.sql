Last login: Tue Jun 12 10:43:28 on ttys000
TommyRogers:~ tommyr$ brew reinstall mysql
==> Reinstalling mysql
==> Downloading https://homebrew.bintray.com/bottles/mysql-5.7.22.high_sierra.bo
Already downloaded: /Users/tommyr/Library/Caches/Homebrew/mysql-5.7.22.high_sierra.bottle.tar.gz
==> Pouring mysql-5.7.22.high_sierra.bottle.tar.gz
==> Caveats
We've installed your MySQL database without a root password. To secure it run:
    mysql_secure_installation

MySQL is configured to only allow connections from localhost by default

To connect run:
    mysql -uroot

To have launchd start mysql now and restart at login:
  brew services start mysql
Or, if you don't want/need a background service you can just run:
  mysql.server start
==> Summary
🍺  /usr/local/Cellar/mysql/5.7.22: 317 files, 234.2MB
TommyRogers:~ tommyr$ mysql_secure_installation

Securing the MySQL server deployment.

Enter password for user root:
Error: Can't connect to local MySQL server through socket '/tmp/mysql.sock' (2)
TommyRogers:~ tommyr$ mysql.server start
Starting MySQL
. SUCCESS!
TommyRogers:~ tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 2
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> \q
Bye
TommyRogers:~ tommyr$ mysql -u root -p [database] < src/main/resources/schema-h2.sql
-bash: src/main/resources/schema-h2.sql: No such file or directory
TommyRogers:~ tommyr$
TommyRogers:~ tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 3
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> mysql -u root -p [database] < src/main/resources/schema-h2.sql
    ->
    -> /q
    ->
    -> /q
    -> \q
Bye
TommyRogers:~ tommyr$ cd labs
TommyRogers:labs tommyr$ git clone ubuntu@zipcode.rocks:TSRogers28/ZCW-NYTArticleSearch.git
Cloning into 'ZCW-NYTArticleSearch'...
Enter passphrase for key '/Users/tommyr/.ssh/id_rsa':
remote: Counting objects: 48, done.
remote: Compressing objects: 100% (45/45), done.
remote: Total 48 (delta 21), reused 0 (delta 0)
Receiving objects: 100% (48/48), 44.43 KiB | 535.00 KiB/s, done.
Resolving deltas: 100% (21/21), done.
TommyRogers:labs tommyr$ ls
Assessment1
CR-MacroLabs-OOP-Casino
CR-MesoLabs-OOP-DuplicateDeleter-BlueJ
CleanCode-GildedRoseKata
Completed Labs
Duplicate deleter
Threes
ZCW-DiceyLab
ZCW-FundamentalDrills-2
ZCW-MesoLabs-Inheritance-ProductManager-BlueJ
ZCW-NYTArticleSearch
ZCW-YeOldeCode
TommyRogers:labs tommyr$ cd ZCW-NYTArticleSearch/
TommyRogers:ZCW-NYTArticleSearch tommyr$ ls
NYTCode.js		NYTSearchImage.png
NYTExample.html		README.md
TommyRogers:ZCW-NYTArticleSearch tommyr$ git add .
TommyRogers:ZCW-NYTArticleSearch tommyr$ git commit -m "nty done"
[master 0824d65] nty done
 Committer: Tommy Rogers <tommyr@TommyRogers.local>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 3 files changed, 92 insertions(+), 119 deletions(-)
TommyRogers:ZCW-NYTArticleSearch tommyr$ git push
Enter passphrase for key '/Users/tommyr/.ssh/id_rsa':
Counting objects: 6, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (6/6), done.
Writing objects: 100% (6/6), 1.77 KiB | 1.77 MiB/s, done.
Total 6 (delta 4), reused 0 (delta 0)
To zipcode.rocks:TSRogers28/ZCW-NYTArticleSearch.git
   ce97238..0824d65  master -> master
TommyRogers:ZCW-NYTArticleSearch tommyr$ git add .
TommyRogers:ZCW-NYTArticleSearch tommyr$ git commit -m "placed in input"
[master 57c8e5d] placed in input
 Committer: Tommy Rogers <tommyr@TommyRogers.local>
Your name and email address were configured automatically based
on your username and hostname. Please check that they are accurate.
You can suppress this message by setting them explicitly. Run the
following command and follow the instructions in your editor to edit
your configuration file:

    git config --global --edit

After doing this, you may fix the identity used for this commit with:

    git commit --amend --reset-author

 2 files changed, 13 insertions(+), 14 deletions(-)
TommyRogers:ZCW-NYTArticleSearch tommyr$ git push
Enter passphrase for key '/Users/tommyr/.ssh/id_rsa':
Enter passphrase for key '/Users/tommyr/.ssh/id_rsa':
Counting objects: 5, done.
Delta compression using up to 4 threads.
Compressing objects: 100% (5/5), done.
Writing objects: 100% (5/5), 637 bytes | 637.00 KiB/s, done.
Total 5 (delta 4), reused 0 (delta 0)
To zipcode.rocks:TSRogers28/ZCW-NYTArticleSearch.git
   0824d65..57c8e5d  master -> master
TommyRogers:ZCW-NYTArticleSearch tommyr$ cd
TommyRogers:~ tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 4
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> mysql -u root -p [database] < src/main/resources/schema-h2.sql
    ->
    -> \q
Bye
TommyRogers:~ tommyr$ mysql -u root -p [database] < src/main/resources/schema-h2.sql
-bash: src/main/resources/schema-h2.sql: No such file or directory
TommyRogers:~ tommyr$
TommyRogers:~ tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 5
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> mysql -u root -p [database]
    -> create database tommyr
    -> create database tommyr;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql -u root -p [database]
create database tommyr
create database tommyr' at line 1
mysql> create database tommyr;
Query OK, 1 row affected (0.01 sec)

mysql> show database
    -> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database
show database' at line 1
mysql> show database;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'database' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tommyr             |
+--------------------+
5 rows in set (0.01 sec)

mysql> \q
Bye
TommyRogers:~ tommyr$ ls
Applications	Downloads	Library		Public		text.save.1
CR-Calcul8r	FizzBuzz	Movies		dev
Desktop		IdeaProjects	Music		myFiles
Documents	Labs		Pictures	text.save
TommyRogers:~ tommyr$ cd labs
TommyRogers:labs tommyr$ git clone ubuntu@zipcode.rocks:TSRogers28/ZCW-MesoLabs-QueryingPersons.SQL.git
Cloning into 'ZCW-MesoLabs-QueryingPersons.SQL'...
Enter passphrase for key '/Users/tommyr/.ssh/id_rsa':
remote: Counting objects: 36, done.
remote: Compressing objects: 100% (28/28), done.
remote: Total 36 (delta 9), reused 0 (delta 0)
Receiving objects: 100% (36/36), 7.21 KiB | 1.80 MiB/s, done.
Resolving deltas: 100% (9/9), done.
TommyRogers:labs tommyr$ ls
Assessment1
CR-MacroLabs-OOP-Casino
CR-MesoLabs-OOP-DuplicateDeleter-BlueJ
CleanCode-GildedRoseKata
Completed Labs
Duplicate deleter
FundamentalDrills
Threes
ZCW-DiceyLab
ZCW-FundamentalDrills-1
ZCW-FundamentalDrills-2
ZCW-MesoLabs-Inheritance-ProductManager-BlueJ
ZCW-MesoLabs-QueryingPersons.SQL
ZCW-NYTArticleSearch
ZCW-YeOldeCode
TommyRogers:labs tommyr$ cd ZCW-MesoLabs-QueryingPersons.SQL/
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ ls
README.md	data-h2.sql	src
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ cd src
TommyRogers:src tommyr$ ls
main
TommyRogers:src tommyr$ cd main
TommyRogers:main tommyr$ ls
resources
TommyRogers:main tommyr$ cd resources
TommyRogers:resources tommyr$ ls
application-h2.properties	schema-h2.sql
application.properties
TommyRogers:resources tommyr$ cd schema-h2.sql
-bash: cd: schema-h2.sql: Not a directory
TommyRogers:resources tommyr$ open schema-h2.sql
TommyRogers:resources tommyr$ ls
application-h2.properties	schema-h2.sql
application.properties
TommyRogers:resources tommyr$ mysql -u root -p tommyr < schema-h2.sql
Enter password:
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
TommyRogers:resources tommyr$ mysql -u root -p tommyr < schema-h2.sql
Enter password:
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
TommyRogers:resources tommyr$ mysql -u root -p tommyr < schema-h2.sql
Enter password:
ERROR 1045 (28000): Access denied for user 'root'@'localhost' (using password: YES)
TommyRogers:resources tommyr$ mysql -u root -p tommyr < schema-h2.sql
Enter password:
TommyRogers:resources tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 10
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> show databases;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show databases' at line 2
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tommyr             |
+--------------------+
5 rows in set (0.00 sec)

mysql> use tommyr
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> show tables
    ->
    -> show tables
    -> ksi
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'show tables
ksi' at line 3
mysql> show tables;
+------------------+
| Tables_in_tommyr |
+------------------+
| homes            |
| movies           |
| people           |
+------------------+
3 rows in set (0.00 sec)

mysql> INSERT INTO people (last_name, first_name, mobile, birthday)
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '' at line 1
mysql> INSERT INTO people (last_name, first_name, mobile, birthday)
    -> VALUES ('Smith', 'John', '230-4293', '1973-01-23');
Query OK, 1 row affected (0.01 sec)

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | John       | Smith     | 230-4293 | 1973-01-23 |    NULL |
+----+------------+-----------+----------+------------+---------+
1 row in set (0.00 sec)

mysql> update people set first_name ='Tony' where id = 1;
Query OK, 1 row affected (0.00 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Tony       | Smith     | 230-4293 | 1973-01-23 |    NULL |
+----+------------+-----------+----------+------------+---------+
1 row in set (0.00 sec)

mysql> update people set mobile = '152-9854' where last_name = 'Smith';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from people;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Tony       | Smith     | 152-9854 | 1973-01-23 |    NULL |
+----+------------+-----------+----------+------------+---------+
1 row in set (0.00 sec)

mysql> update peope set birthday = "1955-01-25"
    -> where last_name = 'Smith'
    -> and id = 4;
ERROR 1146 (42S02): Table 'tommyr.peope' doesn't exist
mysql> update people set birthday = '1955-01-25'
    -> where last_name = 'Smith'
    -> and id = 4;
Query OK, 0 rows affected (0.03 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> update people set id = '4'
    -> where last_name = 'Smith';
Query OK, 1 row affected (0.02 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  4 | Tony       | Smith     | 152-9854 | 1973-01-23 |    NULL |
+----+------------+-----------+----------+------------+---------+
1 row in set (0.01 sec)

mysql> update people set birthday = '1955-01-25' where last_name = 'Smith' and id = 4;
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> insert into people (last_name, first_name, mobile, birthday)
    -> values ('Clark', 'Noelle','584-1742', '1984-01-25');
Query OK, 1 row affected (0.00 sec)

mysql> insert into people (last_name, first_name, mobile, birthday) values ('James', 'Raj','584-1392', '1956-11-09');
Query OK, 1 row affected (0.01 sec)

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  2 | Noelle     | Clark     | 584-1742 | 1984-01-25 |    NULL |
|  3 | Raj        | James     | 584-1392 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
+----+------------+-----------+----------+------------+---------+
3 rows in set (0.00 sec)

mysql> update people set mobile = '333-3333', last_name = 'Johnson' where first_name = 'Noelle' or first_name = 'Raj';
Query OK, 2 rows affected (0.00 sec)
Rows matched: 2  Changed: 2  Warnings: 0

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
+----+------------+-----------+----------+------------+---------+
3 rows in set (0.00 sec)

mysql> select count(homenumber) from homes;
+-------------------+
| count(homenumber) |
+-------------------+
|                 0 |
+-------------------+
1 row in set (0.01 sec)

mysql> select count(distinct last_name) from people;
+---------------------------+
| count(distinct last_name) |
+---------------------------+
|                         2 |
+---------------------------+
1 row in set (0.01 sec)

mysql> select sum(id), avg(id) from people;
+---------+---------+
| sum(id) | avg(id) |
+---------+---------+
|       9 |  3.0000 |
+---------+---------+
1 row in set (0.01 sec)

mysql> select sum(id) as sum, avg(id) as avg from people;
+------+--------+
| sum  | avg    |
+------+--------+
|    9 | 3.0000 |
+------+--------+
1 row in set (0.00 sec)

mysql> select min(birthday) as min from people;
+------------+
| min        |
+------------+
| 1955-01-25 |
+------------+
1 row in set (0.01 sec)

mysql> select upper (first_name), lower(last_name) from people;
+--------------------+------------------+
| upper (first_name) | lower(last_name) |
+--------------------+------------------+
| NOELLE             | johnson          |
| RAJ                | johnson          |
| TONY               | smith            |
+--------------------+------------------+
3 rows in set (0.03 sec)

mysql> select replace(last_name, 'a', '1') from people;
+------------------------------+
| replace(last_name, 'a', '1') |
+------------------------------+
| Johnson                      |
| Johnson                      |
| Smith                        |
+------------------------------+
3 rows in set (0.00 sec)

mysql> select replace(last_name, 's', '1' from people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'from people' at line 1
mysql> select replace(last_name, 's', '1') from people;
+------------------------------+
| replace(last_name, 's', '1') |
+------------------------------+
| John1on                      |
| John1on                      |
| Smith                        |
+------------------------------+
3 rows in set (0.00 sec)

mysql> select last_name from people;
+-----------+
| last_name |
+-----------+
| Johnson   |
| Johnson   |
| Smith     |
+-----------+
3 rows in set (0.00 sec)

mysql> insert into people (first_name, last_name, mobile) values ('Otto', 'Von Count', '656-6548');
ERROR 1062 (23000): Duplicate entry '4' for key 'PRIMARY'
mysql> insert into people (first_name, last_name, mobile, id) values ('Otto', 'Von Count', '656-6548', 1);
Query OK, 1 row affected (0.01 sec)

mysql> select concat(first_name, last_name) from people where last_name = 'Smith';
+-------------------------------+
| concat(first_name, last_name) |
+-------------------------------+
| TonySmith                     |
+-------------------------------+
1 row in set (0.01 sec)

mysql> select concat(first_name, ' ', last_name) from people where last_name = 'Smith';
+------------------------------------+
| concat(first_name, ' ', last_name) |
+------------------------------------+
| Tony Smith                         |
+------------------------------------+
1 row in set (0.00 sec)

mysql> select concat_ws(' ', first_name, last_name, mobile) from people where last_name= 'Smith';
+-----------------------------------------------+
| concat_ws(' ', first_name, last_name, mobile) |
+-----------------------------------------------+
| Tony Smith 152-9854                           |
+-----------------------------------------------+
1 row in set (0.01 sec)

mysql> /q
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '/q' at line 1
mysql> \q
Bye
TommyRogers:resources tommyr$ cd ..
TommyRogers:main tommyr$ ls
resources
TommyRogers:main tommyr$ cd ..
TommyRogers:src tommyr$ ls
main
TommyRogers:src tommyr$ cd ..
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ ls
README.md	data-h2.sql	src
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ mysql -u root tommyr < data-h2.sql
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 12
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tommyr             |
+--------------------+
5 rows in set (0.01 sec)

mysql> use tommyr
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from homes
    -> ;
+----+----------------------------------------+------------+
| id | address                                | homenumber |
+----+----------------------------------------+------------+
|  1 | 36 E. Bayberry Rd.Savannah, GA 31404   | 565-6895   |
|  2 | 11 Essex Dr.Farmingdale, NY 11735      | 454-4544   |
|  3 | 920 Arlington Street Clifton, NJ 07011 | 985-4515   |
|  4 | 234 High Street, PA 19159              | 267-3940   |
+----+----------------------------------------+------------+
4 rows in set (0.00 sec)

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Otto       | Von Count | 656-6548 | NULL       |    NULL |
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 |
|  6 | Raj        | Sharam    | 186-5223 | 1980-08-31 |       3 |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 |
|  8 | Thomas     | Smith     | 395-6181 | 1987-07-06 |       1 |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 |
| 10 | Doug       | Brown     | 466-6241 | 1954-12-07 |       3 |
+----+------------+-----------+----------+------------+---------+
10 rows in set (0.01 sec)

mysql> select count(homenumber) from homes;
+-------------------+
| count(homenumber) |
+-------------------+
|                 4 |
+-------------------+
1 row in set (0.00 sec)

mysql> select replace(last_name, 'a', '1') from people;
+------------------------------+
| replace(last_name, 'a', '1') |
+------------------------------+
| Von Count                    |
| Johnson                      |
| Johnson                      |
| Smith                        |
| C1rbr1l                      |
| Sh1r1m                       |
| Dur1nd                       |
| Smith                        |
| Smith                        |
| Brown                        |
+------------------------------+
10 rows in set (0.00 sec)

mysql> select last_name from people;
+-----------+
| last_name |
+-----------+
| Von Count |
| Johnson   |
| Johnson   |
| Smith     |
| Carbral   |
| Sharam    |
| Durand    |
| Smith     |
| Smith     |
| Brown     |
+-----------+
10 rows in set (0.00 sec)

mysql> select homenumber, left(homenumber, 3), right(homenumber, 2) from homes;
+------------+---------------------+----------------------+
| homenumber | left(homenumber, 3) | right(homenumber, 2) |
+------------+---------------------+----------------------+
| 565-6895   | 565                 | 95                   |
| 454-4544   | 454                 | 44                   |
| 985-4515   | 985                 | 15                   |
| 267-3940   | 267                 | 40                   |
+------------+---------------------+----------------------+
4 rows in set (0.00 sec)

mysql> select length(address), char_length(address) from homesl
    -> select length(address), char_length(address) from homes;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select length(address), char_length(address) from homes' at line 2
mysql> select length(address), char_length(address) from homesl select length(address), char_length(address) from homes;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'select length(address), char_length(address) from homes' at line 1
mysql> select length(address), char_length(address) from homes;
+-----------------+----------------------+
| length(address) | char_length(address) |
+-----------------+----------------------+
|              36 |                   36 |
|              33 |                   33 |
|              38 |                   38 |
|              26 |                   26 |
+-----------------+----------------------+
4 rows in set (0.01 sec)

mysql> select first_name, last_name, year(birthday) from people where birthday >= '1970-07-06' and birthday <= '1987-07-06';
+------------+-----------+----------------+
| first_name | last_name | year(birthday) |
+------------+-----------+----------------+
| Noelle     | Johnson   |           1984 |
| Raj        | Sharam    |           1980 |
| Thomas     | Smith     |           1987 |
+------------+-----------+----------------+
3 rows in set (0.01 sec)

mysql> select first_name, birthday from people where first_name = 'Thomas' or first_name = 'Raj' or first_name = 'Sheeri';
+------------+------------+
| first_name | birthday   |
+------------+------------+
| Raj        | 1956-11-09 |
| Sheeri     | 1970-02-23 |
| Raj        | 1980-08-31 |
| Thomas     | 1987-07-06 |
+------------+------------+
4 rows in set (0.00 sec)

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Otto       | Von Count | 656-6548 | NULL       |    NULL |
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 |
|  6 | Raj        | Sharam    | 186-5223 | 1980-08-31 |       3 |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 |
|  8 | Thomas     | Smith     | 395-6181 | 1987-07-06 |       1 |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 |
| 10 | Doug       | Brown     | 466-6241 | 1954-12-07 |       3 |
+----+------------+-----------+----------+------------+---------+
10 rows in set (0.00 sec)

mysql> update people set (first_name = 'Tommy', last_name = 'Rogers', mobile = '353-2415', birthday = '1989-11-09') where mobile = '186-5223';
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '(first_name = 'Tommy', last_name = 'Rogers', mobile = '353-2415', birthday = '19' at line 1
mysql> update people set first_name = 'Tommy', last_name = 'Rogers', mobile = '353-2415', birthday = '1989-11-09' where mobile = '186-5223';
Query OK, 1 row affected (0.01 sec)
Rows matched: 1  Changed: 1  Warnings: 0

mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Otto       | Von Count | 656-6548 | NULL       |    NULL |
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 |
|  6 | Tommy      | Rogers    | 353-2415 | 1989-11-09 |       3 |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 |
|  8 | Thomas     | Smith     | 395-6181 | 1987-07-06 |       1 |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 |
| 10 | Doug       | Brown     | 466-6241 | 1954-12-07 |       3 |
+----+------------+-----------+----------+------------+---------+
10 rows in set (0.00 sec)

mysql> select first_name, birthday from people where first_name = 'Thomas' or first_name = 'Raj' or first_name = 'Sheeri';    +------------+------------+
| first_name | birthday   |
+------------+------------+
| Raj        | 1956-11-09 |
| Sheeri     | 1970-02-23 |
| Thomas     | 1987-07-06 |
+------------+------------+
3 rows in set (0.00 sec)

mysql> select first_name, birthday from people where first_name in ('Noelle', 'Thomas', 'Raj');
+------------+------------+
| first_name | birthday   |
+------------+------------+
| Noelle     | 1984-01-25 |
| Raj        | 1956-11-09 |
| Noelle     | 1960-07-06 |
| Thomas     | 1987-07-06 |
+------------+------------+
4 rows in set (0.00 sec)

mysql> select first_name from people where right(first-name,1)='e';
ERROR 1054 (42S22): Unknown column 'first' in 'where clause'
mysql> select first_name from people where right(first_name,1)='e';
+------------+
| first_name |
+------------+
| Noelle     |
| Noelle     |
| Jane       |
+------------+
3 rows in set (0.01 sec)

mysql> select first_name from people where first_name like '%j';
+------------+
| first_name |
+------------+
| Raj        |
+------------+
1 row in set (0.01 sec)

mysql> select first_name from people where first_name like '%o%';
+------------+
| first_name |
+------------+
| Otto       |
| Noelle     |
| Tony       |
| Tommy      |
| Noelle     |
| Thomas     |
| Doug       |
+------------+
7 rows in set (0.00 sec)

mysql> select first_name from people where first_name not like '%o%';
+------------+
| first_name |
+------------+
| Raj        |
| Sheeri     |
| Jane       |
+------------+
3 rows in set (0.00 sec)

mysql> select count (*) from people;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '*) from people' at line 1
mysql> select count(*) from people;
+----------+
| count(*) |
+----------+
|       10 |
+----------+
1 row in set (0.00 sec)

mysql> select last_name, count(*) from people group by last_name;
+-----------+----------+
| last_name | count(*) |
+-----------+----------+
| Brown     |        1 |
| Carbral   |        1 |
| Durand    |        1 |
| Johnson   |        2 |
| Rogers    |        1 |
| Smith     |        3 |
| Von Count |        1 |
+-----------+----------+
7 rows in set (0.01 sec)

mysql> select last_name, group_concat(mobile) from people group by last_name;
+-----------+----------------------------+
| last_name | group_concat(mobile)       |
+-----------+----------------------------+
| Brown     | 466-6241                   |
| Carbral   | 230-4233                   |
| Durand    | 395-6161                   |
| Johnson   | 333-3333,333-3333          |
| Rogers    | 353-2415                   |
| Smith     | 152-9854,395-6181,393-6181 |
| Von Count | 656-6548                   |
+-----------+----------------------------+
7 rows in set (0.01 sec)

mysql> select last_name, group_concat(mobile separator ' and ') from people group by last_name;
+-----------+----------------------------------------+
| last_name | group_concat(mobile separator ' and ') |
+-----------+----------------------------------------+
| Brown     | 466-6241                               |
| Carbral   | 230-4233                               |
| Durand    | 395-6161                               |
| Johnson   | 333-3333 and 333-3333                  |
| Rogers    | 353-2415                               |
| Smith     | 152-9854 and 395-6181 and 393-6181     |
| Von Count | 656-6548                               |
+-----------+----------------------------------------+
7 rows in set (0.00 sec)

mysql> select last_name, group_concat(mobile separator ' and ') from people group by last_name having count(*)>1;
+-----------+----------------------------------------+
| last_name | group_concat(mobile separator ' and ') |
+-----------+----------------------------------------+
| Johnson   | 333-3333 and 333-3333                  |
| Smith     | 152-9854 and 395-6181 and 393-6181     |
+-----------+----------------------------------------+
2 rows in set (0.01 sec)

mysql> select last_name, group_concat(mobile separator ' and ') from people where last_name != 'Cabral'  group by last_name having count(*)>1;
+-----------+----------------------------------------+
| last_name | group_concat(mobile separator ' and ') |
+-----------+----------------------------------------+
| Johnson   | 333-3333 and 333-3333                  |
| Smith     | 152-9854 and 395-6181 and 393-6181     |
+-----------+----------------------------------------+
2 rows in set (0.00 sec)

mysql> select first_name, birthday from people order by birthday;
+------------+------------+
| first_name | birthday   |
+------------+------------+
| Otto       | NULL       |
| Doug       | 1954-12-07 |
| Tony       | 1955-01-25 |
| Raj        | 1956-11-09 |
| Noelle     | 1960-07-06 |
| Sheeri     | 1970-02-23 |
| Noelle     | 1984-01-25 |
| Thomas     | 1987-07-06 |
| Jane       | 1987-12-06 |
| Tommy      | 1989-11-09 |
+------------+------------+
10 rows in set (0.01 sec)

mysql> select first_name, birthday from people oder by birthday desc;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'by birthday desc' at line 1
mysql> select first_name, birthday from people order by birthday desc;
+------------+------------+
| first_name | birthday   |
+------------+------------+
| Tommy      | 1989-11-09 |
| Jane       | 1987-12-06 |
| Thomas     | 1987-07-06 |
| Noelle     | 1984-01-25 |
| Sheeri     | 1970-02-23 |
| Noelle     | 1960-07-06 |
| Raj        | 1956-11-09 |
| Tony       | 1955-01-25 |
| Doug       | 1954-12-07 |
| Otto       | NULL       |
+------------+------------+
10 rows in set (0.00 sec)

mysql> select first_name, last_name from people order by last_name, first_name;
+------------+-----------+
| first_name | last_name |
+------------+-----------+
| Doug       | Brown     |
| Sheeri     | Carbral   |
| Noelle     | Durand    |
| Noelle     | Johnson   |
| Raj        | Johnson   |
| Tommy      | Rogers    |
| Jane       | Smith     |
| Thomas     | Smith     |
| Tony       | Smith     |
| Otto       | Von Count |
+------------+-----------+
10 rows in set (0.00 sec)

mysql> select first_name, birthday from people order by birthday desc limit 3;
+------------+------------+
| first_name | birthday   |
+------------+------------+
| Tommy      | 1989-11-09 |
| Jane       | 1987-12-06 |
| Thomas     | 1987-07-06 |
+------------+------------+
3 rows in set (0.00 sec)

mysql> select first_name, MONTHNAME(birthday) as mon, brithday from people order by month(birthday);
ERROR 1054 (42S22): Unknown column 'brithday' in 'field list'
mysql> select first_name, MONTHNAME(birthday) as mon, birthday from people order by month(birthday);
+------------+----------+------------+
| first_name | mon      | birthday   |
+------------+----------+------------+
| Otto       | NULL     | NULL       |
| Noelle     | January  | 1984-01-25 |
| Tony       | January  | 1955-01-25 |
| Sheeri     | February | 1970-02-23 |
| Noelle     | July     | 1960-07-06 |
| Thomas     | July     | 1987-07-06 |
| Raj        | November | 1956-11-09 |
| Tommy      | November | 1989-11-09 |
| Jane       | December | 1987-12-06 |
| Doug       | December | 1954-12-07 |
+------------+----------+------------+
10 rows in set (0.02 sec)

mysql> select first_name, monthname(birthday) as mon, birthday from people order by month(birthday);
+------------+----------+------------+
| first_name | mon      | birthday   |
+------------+----------+------------+
| Otto       | NULL     | NULL       |
| Noelle     | January  | 1984-01-25 |
| Tony       | January  | 1955-01-25 |
| Sheeri     | February | 1970-02-23 |
| Noelle     | July     | 1960-07-06 |
| Thomas     | July     | 1987-07-06 |
| Raj        | November | 1956-11-09 |
| Tommy      | November | 1989-11-09 |
| Jane       | December | 1987-12-06 |
| Doug       | December | 1954-12-07 |
+------------+----------+------------+
10 rows in set (0.00 sec)

mysql> select last_name, count(*) from people group by last_name;
+-----------+----------+
| last_name | count(*) |
+-----------+----------+
| Brown     |        1 |
| Carbral   |        1 |
| Durand    |        1 |
| Johnson   |        2 |
| Rogers    |        1 |
| Smith     |        3 |
| Von Count |        1 |
+-----------+----------+
7 rows in set (0.00 sec)

mysql> select last_name, count(*) from people group by last_name order by null;
+-----------+----------+
| last_name | count(*) |
+-----------+----------+
| Von Count |        1 |
| Johnson   |        2 |
| Smith     |        3 |
| Carbral   |        1 |
| Rogers    |        1 |
| Durand    |        1 |
| Brown     |        1 |
+-----------+----------+
7 rows in set (0.01 sec)

mysql> select last_name, count(*) from people group by last_name order by count;
ERROR 1054 (42S22): Unknown column 'count' in 'order clause'
mysql> insert into people (first_name, last_name, birthday, home_id) values ('John', 'Smith', '1998-04-07', 4), ('Maya', 'Wasserman', null, 4), ('Paul', 'Thompson', '1996-0527', 1);
ERROR 1292 (22007): Incorrect date value: '1996-0527' for column 'birthday' at row 3
mysql> insert into people (first_name, last_name, birthday, home_id) values ('John', 'Smith', '1998-04-07', 4), ('Maya', 'Wasserman', null, 4), ('Paul', 'Thompson', '1996-05-27', 1);
Query OK, 3 rows affected (0.01 sec)
Records: 3  Duplicates: 0  Warnings: 0

mysql> delete from people where first_name='Maya';
Query OK, 1 row affected (0.01 sec)

mysql> select * from people;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Otto       | Von Count | 656-6548 | NULL       |    NULL |
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 |
|  6 | Tommy      | Rogers    | 353-2415 | 1989-11-09 |       3 |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 |
|  8 | Thomas     | Smith     | 395-6181 | 1987-07-06 |       1 |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 |
| 10 | Doug       | Brown     | 466-6241 | 1954-12-07 |       3 |
| 14 | John       | Smith     | NULL     | 1998-04-07 |       4 |
| 16 | Paul       | Thompson  | NULL     | 1996-05-27 |       1 |
+----+------------+-----------+----------+------------+---------+
12 rows in set (0.00 sec)

mysql> insert into people (first_name, last_name, birthday) values ('Eli', 'Kramer', '1984-01-15');
Query OK, 1 row affected (0.01 sec)

mysql> select * from people;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Otto       | Von Count | 656-6548 | NULL       |    NULL |
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 |
|  6 | Tommy      | Rogers    | 353-2415 | 1989-11-09 |       3 |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 |
|  8 | Thomas     | Smith     | 395-6181 | 1987-07-06 |       1 |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 |
| 10 | Doug       | Brown     | 466-6241 | 1954-12-07 |       3 |
| 14 | John       | Smith     | NULL     | 1998-04-07 |       4 |
| 16 | Paul       | Thompson  | NULL     | 1996-05-27 |       1 |
| 17 | Eli        | Kramer    | NULL     | 1984-01-15 |    NULL |
+----+------------+-----------+----------+------------+---------+
13 rows in set (0.00 sec)

mysql> select * from homes;
+----+----------------------------------------+------------+
| id | address                                | homenumber |
+----+----------------------------------------+------------+
|  1 | 36 E. Bayberry Rd.Savannah, GA 31404   | 565-6895   |
|  2 | 11 Essex Dr.Farmingdale, NY 11735      | 454-4544   |
|  3 | 920 Arlington Street Clifton, NJ 07011 | 985-4515   |
|  4 | 234 High Street, PA 19159              | 267-3940   |
+----+----------------------------------------+------------+
4 rows in set (0.00 sec)

mysql> select p.first_name, h.address from people p inner join homes h on (p.home_id = h.id);
+------------+----------------------------------------+
| first_name | address                                |
+------------+----------------------------------------+
| Noelle     | 36 E. Bayberry Rd.Savannah, GA 31404   |
| Thomas     | 36 E. Bayberry Rd.Savannah, GA 31404   |
| Paul       | 36 E. Bayberry Rd.Savannah, GA 31404   |
| Sheeri     | 11 Essex Dr.Farmingdale, NY 11735      |
| Tommy      | 920 Arlington Street Clifton, NJ 07011 |
| Jane       | 920 Arlington Street Clifton, NJ 07011 |
| Doug       | 920 Arlington Street Clifton, NJ 07011 |
| John       | 234 High Street, PA 19159              |
+------------+----------------------------------------+
8 rows in set (0.01 sec)

mysql> select p.first_name, h.address from people p inner join homes h on (p.home_id = h.id) where p.home_id = 1;
+------------+--------------------------------------+
| first_name | address                              |
+------------+--------------------------------------+
| Noelle     | 36 E. Bayberry Rd.Savannah, GA 31404 |
| Thomas     | 36 E. Bayberry Rd.Savannah, GA 31404 |
| Paul       | 36 E. Bayberry Rd.Savannah, GA 31404 |
+------------+--------------------------------------+
3 rows in set (0.01 sec)

mysql> select p.*, h.address, h.homenumber from people p inner join homes h on (p.home_id = h_id) where p.first_name like '%e%';
ERROR 1054 (42S22): Unknown column 'h_id' in 'on clause'
mysql> select p.*, h.address, h.homenumber from people p inner join homes h on (p.home_id = h.id) where p.first_name like '%e%';
+----+------------+-----------+----------+------------+---------+----------------------------------------+------------+
| id | first_name | last_name | mobile   | birthday   | home_id | address                                | homenumber |
+----+------------+-----------+----------+------------+---------+----------------------------------------+------------+
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 | 11 Essex Dr.Farmingdale, NY 11735      | 454-4544   |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 | 36 E. Bayberry Rd.Savannah, GA 31404   | 565-6895   |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 | 920 Arlington Street Clifton, NJ 07011 | 985-4515   |
+----+------------+-----------+----------+------------+---------+----------------------------------------+------------+
3 rows in set (0.00 sec)

mysql> select p.first_name, h.address from people p inner join homes h on (p.home_id = h.id) where p.birthday != null;
Empty set (0.00 sec)

mysql> select p.first_name, h.address from people p where birthday != 'null' inner join homes h on (p.home_id = h.id);
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'inner join homes h on (p.home_id = h.id)' at line 1
mysql> select p.first_name, h.address from people p inner join homes h on (p.home_id = h.id) where p.birthday != 'null';
+------------+----------------------------------------+
| first_name | address                                |
+------------+----------------------------------------+
| Noelle     | 36 E. Bayberry Rd.Savannah, GA 31404   |
| Thomas     | 36 E. Bayberry Rd.Savannah, GA 31404   |
| Paul       | 36 E. Bayberry Rd.Savannah, GA 31404   |
| Sheeri     | 11 Essex Dr.Farmingdale, NY 11735      |
| Tommy      | 920 Arlington Street Clifton, NJ 07011 |
| Jane       | 920 Arlington Street Clifton, NJ 07011 |
| Doug       | 920 Arlington Street Clifton, NJ 07011 |
| John       | 234 High Street, PA 19159              |
+------------+----------------------------------------+
8 rows in set, 1 warning (0.00 sec)

mysql> select p.first_name, h.address, monthname(birthday) as mon, p.birthday from people p inner join homes h on (p.home_id = h.id) where p.birthday != 'null' order by month(birthday);
+------------+----------------------------------------+----------+------------+
| first_name | address                                | mon      | birthday   |
+------------+----------------------------------------+----------+------------+
| Sheeri     | 11 Essex Dr.Farmingdale, NY 11735      | February | 1970-02-23 |
| John       | 234 High Street, PA 19159              | April    | 1998-04-07 |
| Paul       | 36 E. Bayberry Rd.Savannah, GA 31404   | May      | 1996-05-27 |
| Noelle     | 36 E. Bayberry Rd.Savannah, GA 31404   | July     | 1960-07-06 |
| Thomas     | 36 E. Bayberry Rd.Savannah, GA 31404   | July     | 1987-07-06 |
| Tommy      | 920 Arlington Street Clifton, NJ 07011 | November | 1989-11-09 |
| Doug       | 920 Arlington Street Clifton, NJ 07011 | December | 1954-12-07 |
| Jane       | 920 Arlington Street Clifton, NJ 07011 | December | 1987-12-06 |
+------------+----------------------------------------+----------+------------+
8 rows in set, 1 warning (0.01 sec)

mysql> select p.id, p.first_name, p.last_name, h.id, h.address, monthname(birthday) as mon, p.birthday, p.mobile, h.homenumber from peop+----+------------+-----------+----+----------------------------------------+----------+------------+----------+------------+
| id | first_name | last_name | id | address                                | mon      | birthday   | mobile   | homenumber |
+----+------------+-----------+----+----------------------------------------+----------+------------+----------+------------+
|  5 | Sheeri     | Carbral   |  2 | 11 Essex Dr.Farmingdale, NY 11735      | February | 1970-02-23 | 230-4233 | 454-4544   |
| 14 | John       | Smith     |  4 | 234 High Street, PA 19159              | April    | 1998-04-07 | NULL     | 267-3940   |
| 16 | Paul       | Thompson  |  1 | 36 E. Bayberry Rd.Savannah, GA 31404   | May      | 1996-05-27 | NULL     | 565-6895   |
|  7 | Noelle     | Durand    |  1 | 36 E. Bayberry Rd.Savannah, GA 31404   | July     | 1960-07-06 | 395-6161 | 565-6895   |
|  8 | Thomas     | Smith     |  1 | 36 E. Bayberry Rd.Savannah, GA 31404   | July     | 1987-07-06 | 395-6181 | 565-6895   |
|  6 | Tommy      | Rogers    |  3 | 920 Arlington Street Clifton, NJ 07011 | November | 1989-11-09 | 353-2415 | 985-4515   |
|  9 | Jane       | Smith     |  3 | 920 Arlington Street Clifton, NJ 07011 | December | 1987-12-06 | 393-6181 | 985-4515   |
| 10 | Doug       | Brown     |  3 | 920 Arlington Street Clifton, NJ 07011 | December | 1954-12-07 | 466-6241 | 985-4515   |
+----+------------+-----------+----+----------------------------------------+----------+------------+----------+------------+
8 rows in set, 1 warning (0.00 sec)

mysql> \q
Bye
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ ls
README.md	data-h2.sql	src
TommyRogers:ZCW-MesoLabs-QueryingPersons.SQL tommyr$ cd src
TommyRogers:src tommyr$ ls
main
TommyRogers:src tommyr$ cd main
TommyRogers:main tommyr$ ls
resources
TommyRogers:main tommyr$ cd resources
TommyRogers:resources tommyr$ ls
application-h2.properties	application.properties		schema-h2.sql
TommyRogers:resources tommyr$ touch script.sql
TommyRogers:resources tommyr$ ls
application-h2.properties	application.properties		schema-h2.sql			script.sql
TommyRogers:resources tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 13
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> select * movies
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'movies' at line 1
mysql> select * from movies
    -> ;
ERROR 1046 (3D000): No database selected
mysql> -p tommyr
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near '-p tommyr' at line 1
mysql> mysql -u root -p tommyr
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'mysql -u root -p tommyr' at line 1
mysql> show databases
    -> ;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tommyr             |
+--------------------+
5 rows in set (0.00 sec)

mysql> use tommyr
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from movies
    -> ;
Empty set (0.00 sec)

mysql> \q
Bye
TommyRogers:resources tommyr$ cd labs
-bash: cd: labs: No such file or directory
TommyRogers:resources tommyr$ ls
application-h2.properties	application.properties		schema-h2.sql			script.sql
TommyRogers:resources tommyr$ mysql -u root
Welcome to the MySQL monitor.  Commands end with ; or \g.
Your MySQL connection id is 14
Server version: 5.7.22 Homebrew

Copyright (c) 2000, 2018, Oracle and/or its affiliates. All rights reserved.

Oracle is a registered trademark of Oracle Corporation and/or its
affiliates. Other names may be trademarks of their respective
owners.

Type 'help;' or '\h' for help. Type '\c' to clear the current input statement.

mysql> shows databases
    -> ;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'shows databases' at line 1
mysql> show databases;
+--------------------+
| Database           |
+--------------------+
| information_schema |
| mysql              |
| performance_schema |
| sys                |
| tommyr             |
+--------------------+
5 rows in set (0.00 sec)

mysql> use tommyr
Reading table information for completion of table and column names
You can turn off this feature to get a quicker startup with -A

Database changed
mysql> select * from people
    -> ;
+----+------------+-----------+----------+------------+---------+
| id | first_name | last_name | mobile   | birthday   | home_id |
+----+------------+-----------+----------+------------+---------+
|  1 | Otto       | Von Count | 656-6548 | NULL       |    NULL |
|  2 | Noelle     | Johnson   | 333-3333 | 1984-01-25 |    NULL |
|  3 | Raj        | Johnson   | 333-3333 | 1956-11-09 |    NULL |
|  4 | Tony       | Smith     | 152-9854 | 1955-01-25 |    NULL |
|  5 | Sheeri     | Carbral   | 230-4233 | 1970-02-23 |       2 |
|  6 | Tommy      | Rogers    | 353-2415 | 1989-11-09 |       3 |
|  7 | Noelle     | Durand    | 395-6161 | 1960-07-06 |       1 |
|  8 | Thomas     | Smith     | 395-6181 | 1987-07-06 |       1 |
|  9 | Jane       | Smith     | 393-6181 | 1987-12-06 |       3 |
| 10 | Doug       | Brown     | 466-6241 | 1954-12-07 |       3 |
| 14 | John       | Smith     | NULL     | 1998-04-07 |       4 |
| 16 | Paul       | Thompson  | NULL     | 1996-05-27 |       1 |
| 17 | Eli        | Kramer    | NULL     | 1984-01-15 |    NULL |
+----+------------+-----------+----------+------------+---------+
13 rows in set (0.00 sec)

mysql> select * from movies
    -> ;
Empty set (0.00 sec)

mysql> insert into movies (title, runtime, genre, imbb_score, rating) values('Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG');
ERROR 1054 (42S22): Unknown column 'imbb_score' in 'field list'
mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Howard the Duck', '110', 'Sci-Fi', '4.6', 'PG');
Query OK, 1 row affected (0.01 sec)

mysql> select * from movies
    -> ;
+----+-----------------+---------+--------+------------+--------+
| id | title           | runtime | genre  | imdb_score | rating |
+----+-----------------+---------+--------+------------+--------+
|  1 | Howard the Duck |     110 | Sci-Fi |        4.6 | PG     |
+----+-----------------+---------+--------+------------+--------+
1 row in set (0.00 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Lavalantula', '83', 'Horror', '4.7', 'TV-14');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Starship Troopers', '129', 'Sci-Fi', '7.2', 'PG-13');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Walts With Bashir', '90', 'Documentary', '8.0', 'R');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Spaceballs', '96', 'Comedy', '7.1', 'PG');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Monsters Inc.', '92', 'Animation', '8.1', 'G');
Query OK, 1 row affected (0.00 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Good Will Hunting', '126', 'Drama', '8.3', 'R');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Memento', '113', 'Mystery/ Thriller', '8.5', 'R');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Sicario', '121', 'Action', '7.6', 'R');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Collateral', '120', 'Crime', '7.5', 'R');
Query OK, 1 row affected (0.01 sec)

mysql> insert into movies (title, runtime, genre, imdb_score, rating) values('Terminator 2', '137', 'Sci-Fi', '8.5', 'R');
Query OK, 1 row affected (0.01 sec)

mysql> select * from movies
    -> ;
+----+-------------------+---------+-------------------+------------+--------+
| id | title             | runtime | genre             | imdb_score | rating |
+----+-------------------+---------+-------------------+------------+--------+
|  1 | Howard the Duck   |     110 | Sci-Fi            |        4.6 | PG     |
|  2 | Lavalantula       |      83 | Horror            |        4.7 | TV-14  |
|  3 | Starship Troopers |     129 | Sci-Fi            |        7.2 | PG-13  |
|  4 | Walts With Bashir |      90 | Documentary       |        8.0 | R      |
|  5 | Spaceballs        |      96 | Comedy            |        7.1 | PG     |
|  6 | Monsters Inc.     |      92 | Animation         |        8.1 | G      |
|  7 | Good Will Hunting |     126 | Drama             |        8.3 | R      |
|  8 | Memento           |     113 | Mystery/ Thriller |        8.5 | R      |
|  9 | Sicario           |     121 | Action            |        7.6 | R      |
| 10 | Collateral        |     120 | Crime             |        7.5 | R      |
| 11 | Terminator 2      |     137 | Sci-Fi            |        8.5 | R      |
+----+-------------------+---------+-------------------+------------+--------+
11 rows in set (0.00 sec)

mysql> select * from movies where genre = 'Sci-Fi';
+----+-------------------+---------+--------+------------+--------+
| id | title             | runtime | genre  | imdb_score | rating |
+----+-------------------+---------+--------+------------+--------+
|  1 | Howard the Duck   |     110 | Sci-Fi |        4.6 | PG     |
|  3 | Starship Troopers |     129 | Sci-Fi |        7.2 | PG-13  |
| 11 | Terminator 2      |     137 | Sci-Fi |        8.5 | R      |
+----+-------------------+---------+--------+------------+--------+
3 rows in set (0.00 sec)

mysql> select * from movies where imdb_score > '6.5';
+----+-------------------+---------+-------------------+------------+--------+
| id | title             | runtime | genre             | imdb_score | rating |
+----+-------------------+---------+-------------------+------------+--------+
|  3 | Starship Troopers |     129 | Sci-Fi            |        7.2 | PG-13  |
|  4 | Walts With Bashir |      90 | Documentary       |        8.0 | R      |
|  5 | Spaceballs        |      96 | Comedy            |        7.1 | PG     |
|  6 | Monsters Inc.     |      92 | Animation         |        8.1 | G      |
|  7 | Good Will Hunting |     126 | Drama             |        8.3 | R      |
|  8 | Memento           |     113 | Mystery/ Thriller |        8.5 | R      |
|  9 | Sicario           |     121 | Action            |        7.6 | R      |
| 10 | Collateral        |     120 | Crime             |        7.5 | R      |
| 11 | Terminator 2      |     137 | Sci-Fi            |        8.5 | R      |
+----+-------------------+---------+-------------------+------------+--------+
9 rows in set (0.01 sec)

mysql> select * from movies where imdb_score > '6.5' order by imdb_score;
+----+-------------------+---------+-------------------+------------+--------+
| id | title             | runtime | genre             | imdb_score | rating |
+----+-------------------+---------+-------------------+------------+--------+
|  5 | Spaceballs        |      96 | Comedy            |        7.1 | PG     |
|  3 | Starship Troopers |     129 | Sci-Fi            |        7.2 | PG-13  |
| 10 | Collateral        |     120 | Crime             |        7.5 | R      |
|  9 | Sicario           |     121 | Action            |        7.6 | R      |
|  4 | Walts With Bashir |      90 | Documentary       |        8.0 | R      |
|  6 | Monsters Inc.     |      92 | Animation         |        8.1 | G      |
|  7 | Good Will Hunting |     126 | Drama             |        8.3 | R      |
|  8 | Memento           |     113 | Mystery/ Thriller |        8.5 | R      |
| 11 | Terminator 2      |     137 | Sci-Fi            |        8.5 | R      |
+----+-------------------+---------+-------------------+------------+--------+
9 rows in set (0.00 sec)

mysql> select * from movies where rating = 'G' or rating = 'PG';
+----+-----------------+---------+-----------+------------+--------+
| id | title           | runtime | genre     | imdb_score | rating |
+----+-----------------+---------+-----------+------------+--------+
|  1 | Howard the Duck |     110 | Sci-Fi    |        4.6 | PG     |
|  5 | Spaceballs      |      96 | Comedy    |        7.1 | PG     |
|  6 | Monsters Inc.   |      92 | Animation |        8.1 | G      |
+----+-----------------+---------+-----------+------------+--------+
3 rows in set (0.00 sec)

mysql> select * from movies where rating = 'G' or rating = 'PG' order by rating;
+----+-----------------+---------+-----------+------------+--------+
| id | title           | runtime | genre     | imdb_score | rating |
+----+-----------------+---------+-----------+------------+--------+
|  6 | Monsters Inc.   |      92 | Animation |        8.1 | G      |
|  1 | Howard the Duck |     110 | Sci-Fi    |        4.6 | PG     |
|  5 | Spaceballs      |      96 | Comedy    |        7.1 | PG     |
+----+-----------------+---------+-----------+------------+--------+
3 rows in set (0.01 sec)

mysql> select * from movies where rating = 'G' or rating = 'PG' and runtime < '100' order by rating;
+----+---------------+---------+-----------+------------+--------+
| id | title         | runtime | genre     | imdb_score | rating |
+----+---------------+---------+-----------+------------+--------+
|  6 | Monsters Inc. |      92 | Animation |        8.1 | G      |
|  5 | Spaceballs    |      96 | Comedy    |        7.1 | PG     |
+----+---------------+---------+-----------+------------+--------+
2 rows in set (0.01 sec)

mysql> select avg(runtime) as 'Averge Runtime' where rating < 7.5 order by genre;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where rating < 7.5 order by genre' at line 1
mysql> select avg(runtime) as 'Averge Runtime' where rating < '7.5' order by genre;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'where rating < '7.5' order by genre' at line 1
mysql> select avg(runtime) as 'Averge Runtime' from movies where rating < '7.5' order by genre;
+----------------+
| Averge Runtime |
+----------------+
|           NULL |
+----------------+
1 row in set (0.00 sec)

mysql> select id, title, avg(runtime) as 'Averge Runtime', genre, imdb_score, rating from movies where rating < '7.5' order by genre;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'tommyr.movies.id'; this is incompatible with sql_mode=only_full_group_by
mysql> select  title, avg(runtime) as 'Averge Runtime', genre, imdb_score, rating from movies where rating < '7.5' order by genre;
ERROR 1140 (42000): In aggregated query without GROUP BY, expression #1 of SELECT list contains nonaggregated column 'tommyr.movies.title'; this is incompatible with sql_mode=only_full_group_by
mysql> select  title, avg(runtime) as 'Averge Runtime', genre, imdb_score, rating from movies where rating < '7.5' grouped by genre order by genre;
ERROR 1064 (42000): You have an error in your SQL syntax; check the manual that corresponds to your MySQL server version for the right syntax to use near 'grouped by genre order by genre' at line 1
mysql> select  title, avg(runtime) as 'Averge Runtime', genre, imdb_score, rating from movies where rating < '7.5' group by genre order by genre;
ERROR 1055 (42000): Expression #1 of SELECT list is not in GROUP BY clause and contains nonaggregated column 'tommyr.movies.title' which is not functionally dependent on columns in GROUP BY clause; this is incompatible with sql_mode=only_full_group_by
mysql> select  avg(runtime) as 'Averge Runtime', genre  from movies where rating < '7.5' group by genre order by genre;
Empty set (0.01 sec)

mysql> select  avg(runtime) as 'Averge Runtime'  from movies where rating < '7.5' group by genre order by genre;
Empty set (0.00 sec)

mysql> select genre,  avg(runtime) as 'Averge Runtime'  from movies where rating < '7.5' group by genre order by genre;
Empty set (0.00 sec)

mysql> select genre,  avg(runtime) as 'Averge Runtime'  from movies where rating < '7.5' group by genre;
Empty set (0.00 sec)

mysql> select * from movies
    -> ;
+----+-------------------+---------+-------------------+------------+--------+
| id | title             | runtime | genre             | imdb_score | rating |
+----+-------------------+---------+-------------------+------------+--------+
|  1 | Howard the Duck   |     110 | Sci-Fi            |        4.6 | PG     |
|  2 | Lavalantula       |      83 | Horror            |        4.7 | TV-14  |
|  3 | Starship Troopers |     129 | Sci-Fi            |        7.2 | PG-13  |
|  4 | Walts With Bashir |      90 | Documentary       |        8.0 | R      |
|  5 | Spaceballs        |      96 | Comedy            |        7.1 | PG     |
|  6 | Monsters Inc.     |      92 | Animation         |        8.1 | G      |
|  7 | Good Will Hunting |     126 | Drama             |        8.3 | R      |
|  8 | Memento           |     113 | Mystery/ Thriller |        8.5 | R      |
|  9 | Sicario           |     121 | Action            |        7.6 | R      |
| 10 | Collateral        |     120 | Crime             |        7.5 | R      |
| 11 | Terminator 2      |     137 | Sci-Fi            |        8.5 | R      |
+----+-------------------+---------+-------------------+------------+--------+
11 rows in set (0.00 sec)

mysql> select genre,  avg(runtime) as 'Averge Runtime'  from movies where imdb_score < '7.5' group by genre;
+--------+----------------+
| genre  | Averge Runtime |
+--------+----------------+
| Comedy |        96.0000 |
| Horror |        83.0000 |
| Sci-Fi |       119.5000 |
+--------+----------------+
3 rows in set (0.00 sec)

mysql> update movies set rating = 'R' where title = 'Star Troopers';
Query OK, 0 rows affected (0.00 sec)
Rows matched: 0  Changed: 0  Warnings: 0

mysql> select rating, id from movies where genre ='Horror' and genre = 'Documentary';
Empty set (0.00 sec)

mysql> select rating from movies where genre ='Horror' and genre = 'Documentary';
Empty set (0.01 sec)

mysql> select rating from movies where genre in('Horror', 'Documentary');
+--------+
| rating |
+--------+
| TV-14  |
| R      |
+--------+
2 rows in set (0.00 sec)

mysql> select id, rating from movies where genre in('Horror', 'Documentary');
+----+--------+
| id | rating |
+----+--------+
|  2 | TV-14  |
|  4 | R      |
+----+--------+
2 rows in set (0.00 sec)

mysql> select avg(imdb_score), max(imdb_score), min(imdb_score) from movies group by rating;
+-----------------+-----------------+-----------------+
| avg(imdb_score) | max(imdb_score) | min(imdb_score) |
+-----------------+-----------------+-----------------+
|         8.10000 |             8.1 |             8.1 |
|         5.85000 |             7.1 |             4.6 |
|         7.20000 |             7.2 |             7.2 |
|         8.06667 |             8.5 |             7.5 |
|         4.70000 |             4.7 |             4.7 |
+-----------------+-----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select rating, avg(imdb_score), max(imdb_score), min(imdb_score) from movies group by rating;
+--------+-----------------+-----------------+-----------------+
| rating | avg(imdb_score) | max(imdb_score) | min(imdb_score) |
+--------+-----------------+-----------------+-----------------+
| G      |         8.10000 |             8.1 |             8.1 |
| PG     |         5.85000 |             7.1 |             4.6 |
| PG-13  |         7.20000 |             7.2 |             7.2 |
| R      |         8.06667 |             8.5 |             7.5 |
| TV-14  |         4.70000 |             4.7 |             4.7 |
+--------+-----------------+-----------------+-----------------+
5 rows in set (0.00 sec)

mysql> select rating, avg(imdb_score), max(imdb_score), min(imdb_score) from movies group by rating having count(*)>1;
+--------+-----------------+-----------------+-----------------+
| rating | avg(imdb_score) | max(imdb_score) | min(imdb_score) |
+--------+-----------------+-----------------+-----------------+
| PG     |         5.85000 |             7.1 |             4.6 |
| R      |         8.06667 |             8.5 |             7.5 |
+--------+-----------------+-----------------+-----------------+
2 rows in set (0.00 sec)

mysql> delete from movies where rating = 'R';
Query OK, 6 rows affected (0.01 sec)

mysql> select * from movies;
+----+-------------------+---------+-----------+------------+--------+
| id | title             | runtime | genre     | imdb_score | rating |
+----+-------------------+---------+-----------+------------+--------+
|  1 | Howard the Duck   |     110 | Sci-Fi    |        4.6 | PG     |
|  2 | Lavalantula       |      83 | Horror    |        4.7 | TV-14  |
|  3 | Starship Troopers |     129 | Sci-Fi    |        7.2 | PG-13  |
|  5 | Spaceballs        |      96 | Comedy    |        7.1 | PG     |
|  6 | Monsters Inc.     |      92 | Animation |        8.1 | G      |
+----+-------------------+---------+-----------+------------+--------+
5 rows in set (0.00 sec)

mysql>
