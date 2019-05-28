-- Write your sql commands to create your db schema here.
-- It should create a table in a new table in the db/ directory.
  
   def create_table
    sql = <<-SQL
    CREATE TABLE IF NOT EXISTS pokemon (
      id INTEGER AUTO_INCREMENT,
      name TEXT,
      type TEXT
    )
    SQL

    DB[:conn].execute(sql)
  end