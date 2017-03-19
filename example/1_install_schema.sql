## Create your first table
CREATE TABLE example_table (
  id int(11) unsigned NOT NULL AUTO_INCREMENT,
  name char(128) NOT NULL,
  PRIMARY KEY (id),
  KEY name_idx (name)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- //@UNDO

## Create any rollback instructions
DROP TABLE example_table;