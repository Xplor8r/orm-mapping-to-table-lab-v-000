class Student
  attr_accessor :name, :grade
  attr_reader :id
  @@all = []
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.all
    @@all
  end
  
 def self.create_table
    sql =  <<-SQL 
      CREATE TABLE IF NOT EXISTS students (
        id INTEGER PRIMARY KEY, 
        name TEXT, 
        grade TEXT
        )
        SQL
    DB[:conn].execute(sql) 
  end
  
  def self.drop_table
    sql = <<-SQL
      DROP TABLE students
    SQL
    
    DB[:conn].execute(sql)
  end

  def save
    sql = <<-SQL
      INSERT INTO students (id = nil, name, grade)
        VALUES (id, ?, ?)
    SQL
    
    DB[:conn].execute(sql)
  end
  
  def self.create(name = "", grade = "")
    @@all << self.new(name, grade)
  end
end
