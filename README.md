# DBDeploy
## Control your Database Schema and manage migrations

DBDeploy manages the migration of your database scheme when you need to create new or update existing databases.

This implementation uses Docker to abstract away the execution and keep your application free for database deployment tools.

## How to use

Create a numbered list of db delta scripts that will be run in numerical order.

These SQL command files can initialise your database by creating tables, populating databases with initial data set or migrating to an updated schemas.

Anything you can run in your database can be included in these db deltas.

Each delta will only be run once so no need to check in sql if a previous delta has to be run.

Every sql file MUST include the following comment intended to indicate the start of roll back statements for each db delta.

```
-- //@UNDO
```
## How to run
```
Docker run -eHOST={db host} -eUSER={db user} -ePASS={db password} -eDB={database name} -v {your delta Dir}:/app/dbdeploy/deltas tomberthon/dbdeploy
```

## Compatibility
 - Mysql 5.5+
 - The rest is dependent on your SQL statements
