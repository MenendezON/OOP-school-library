require_relative 'app'

ACTIONS = {
  1 => :list_books,
  2 => :list_people,
  3 => :create_person,
  4 => :create_book,
  5 => :create_rental,
  6 => :list_rentals,
  7 => :break
}.freeze

class Main
  def initialize
    @app = App.new
    select_option
  end

  def display_option
    puts 'Welcome to School library App!'
    puts "Please choose an option by entering a number:
      1- List all books.
      2- List all people.
      3- Create a person.
      4- Create a book.
      5- Create a rental.
      6- List all rentals for a given person id.
      7- Exit."
  end

  def select_option
    loop do
      display_option
      option = gets.chomp.to_i
      action = ACTIONS[option]

      if action == :break
        break
      elsif action
        @app.send(action)
      else
        puts 'Invalid number, please try again!'
      end
    end
  end
end

Main.new
