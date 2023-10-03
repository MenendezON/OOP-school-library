class Person
  attr_accessor :name, :age
  attr_reader :id

  def initialize(id, age, parent_permission: true, name: 'Unknow')
    @id = id
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  def can_use_services?
    of_age? or @parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end

class Student < Person
  def initialize(id, age, classroom, name: 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯\\(ツ)/¯'
  end
end

class Teacher < Person
  def initialize(id, age, specialization, name: 'Unknown', parent_permission: true)
    super(id, age, name, parent_permission)
    @specialization = specialization
  end

  def can_use_services?
    true
  end
end
