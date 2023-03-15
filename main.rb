require './app'
require './person'
require './teacher'
require './student'

def main
  loop do
    app = App.new
    puts 'Welcome to School Library'
    puts "\n"
    puts '1 - List all books'
    puts '2 - List all people'
    puts '3 - Create a person'
    puts '4 - Create a book'
    puts '5 - Create a rental'
    puts '6 - List all rentals for a given person id'
    puts '7 - Exit'

    input = gets.champ

    case test
    when 1
      list_books
    when 2
      list_people
    when 3
      create_person
    when 4
        create_book
    when 5
        create_rental
    when 6
        list_rentals
    when 7
        return
    end
  end
  end
end

main
