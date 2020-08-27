class Student

  # Remember, you can access your database connection anywhere in this class
  #  with DB[:conn]  
  
  attr_accessor :name, :grade
  attr_reader :id
  
  def initialize(name, grade)
    @id = id
    @name = name 
    @grade = grade
  end
  
  def self.create_table
    sql = <<-SQL
    Create Table if Not Exists students (
    id INT Primary Key,
    name Text,
    grade Text
    )
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.drop_table
    sql = <<-SQL
    drop table students
    SQL
    DB[:conn].execute(sql)
  end
  
  def self.Create
    
  end
 
  
end
  
