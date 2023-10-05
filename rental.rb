class Rental
  attr_reader :book, :person
  attr_accessor :date

  def initialize(date, person, book)
    @date = date
    @book = person
    @person = book
  end
end
