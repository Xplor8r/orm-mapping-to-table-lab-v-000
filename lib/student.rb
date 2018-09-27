class Student
  attr_accessor :name, :grade
  attr_reader :id
  @@all = []
  
  def initialize(name, grade, id = nil)
    @name = name
    @grade = grade
    @id = id
  end
  

  #  with DB[:conn]  
  
end
