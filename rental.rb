class Rental
  attr_accessor :date

  belongs_to :book, :person

  def initialize(date, person, book)
    @date = date
    @book = person
    @person = book
  end
end
