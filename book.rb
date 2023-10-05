require './rental'

class Book
  attr_accessor :title, :author, :rental

  def initialize(title, author)
    @title = title
    @author = author
    @rental = []
  end

  def add_rental(rental)
    @rentals << rental
  end

  def list_rentals
    @rentals.each do |rental|
      puts "Rental ID: #{rental.id}, Person ID: #{rental.person_id}"
    end
  end
end
