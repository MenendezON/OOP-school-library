class Person
  attr_accessor :name, :age
  attr_reader :id

  has_many :rental

  def initialize(age, parent_permission: true, name: 'Unknow')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  private

  def of_age?
    @age >= 18
  end
end
