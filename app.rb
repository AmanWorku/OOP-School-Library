require './student'
require './person'
require './book'
require './teacher'

class App
    def list_people
        @people.each do |person|
          puts "#{person.class.name} Name: #{person.name} | ID: #{person.id}"
    end
    def create_book
        puts "Title:"
        title = gets.chomp
        puts "Author:"
        author = gets.chomp
        puts "Book created successfuly!"
        @books << Book.new(title, author)
    end
end
