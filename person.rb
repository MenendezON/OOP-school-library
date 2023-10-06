require './nameable'
require './capitalize_decorator'
require './trimmer_decorator'
require './book'
require './rental'

class Person < Nameable
  attr_accessor :name, :age, :rental
  attr_reader :id

  def initialize(age, name = 'Unknow', parent_permission: true)
    super()
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
    @rental = []
  end

  def add_rental(book, date)
    Rental.new(date, self, person)
  end

  def can_use_services?
    of_age? || @parent_permission == true
  end

  def correct_name
    @name
  end

  private

  def of_age?
    @age >= 18
  end
end
