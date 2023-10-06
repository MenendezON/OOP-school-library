class Rental
  attr_accessor :date, :book, :person

  def initialize(date, person, book)
    @date = date
    @book = person
    @person = book
    person.rental << self
    book.rental << self
  end
end
