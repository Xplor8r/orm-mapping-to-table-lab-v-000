class Student
  attr_accessor :name, :grade
  attr_reader :id
  @@all = []
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  
  def self.create_table
    sql = <<- SQL
      CREATE TABLE IF NOT EXITS students (
        id INTEGER PRIMARY KEY,
        name TEXT,
        grade TEXT
      )
    SQL
  end

  #  with DB[:conn]  
  
end
