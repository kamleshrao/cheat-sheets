# SQLite Cheat Sheet 

Command Line Tools: 
Download from https://sqlite.org/download.html 

Unzip the sqlite files into a /sqlite folder.  Copy your .db file into it.

- Start the sqlite program with .db file as parameter from command line 

```
sqlite3 todosapp.db 
```

Use below commands on SQLite prompt:

- To list all tables in the database: 

```
.tables 
```

- To view the structure of table: 

```
PRAGMA TABLE_INFO(employees); 
```

- To view the full schema of current database 

```
.schema
```

- To view contents of table 

```
select * from employees;
```

GUI Editor: 

http://sqlitestudio.pl/

