class Pokemon
  
  attr_accessor :name, :type, :db 
  attr_reader :id 

  def initialize(id=nil, name, type)
    @id = id 
    @name = name 
    @type = type 
  end 

  
def save
  if self.id
     self.update
  else
    sql = <<-SQL
      INSERT INTO students (name, type, )
      VALUES (?, ?)
    SQL
    DB[:conn].execute(sql, self.name, self.grade)
    @id = DB[:conn].execute("SELECT last_insert_rowid() FROM students")[0][0]
  end
end

 def update
    sql = "UPDATE students SET name = ?, grade = ? WHERE id = ?"
    DB[:conn].execute(sql, self.name, self.grade, self.id)
  end


  def self.find_by_name(name)
  
    sql = "SELECT * FROM students WHERE name = ?"
    result = DB[:conn].execute(sql, name)[0]
    Student.new(result[0], result[1], result[2])
  end

end
