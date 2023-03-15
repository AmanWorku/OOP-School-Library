require './student'
require './person'
require './book'
require './teacher'

class App
    def initialize
        @people = []
        @books = []
        @rentals = []
    end
    def list_books
        if @books.empty?
            puts 'There is no book.'
            return
        end
        @books.each do |book, index|
          puts "#{index +  1} Title: #{book.title} , Author: #{boook.author}"
    end
    def list_people
        if @people.empty?
            puts 'There are no people.'
            return
        end
        @people.each_with_index do |p, index|
            puts "#{index + 1} [#{p.class}] Name: #{p.name}, ID: #{p.id}, Age: #{p.age}"
          end
        end
    end
    def create_person
        puts 'Do you want to create a student (1) or a teacher (2)? [Input the number]: '
        type = gets.chomp
    
        case type
        when 1
          print 'Age: '
          age = gets.chomp.to_i
          print 'Name: '
          name = gets.chomp
          print 'Has parent permission? [Y/N]:  '
          permission = gets.chomp.downcase
          @people << Student.new(age, name, permission)
        when 2
        print 'Age: '
          age = gets.chomp.to_i
          print 'Name: '
          name = gets.chomp
          print 'Specialization:  '
          specialization = gets.chomp
          @people << Teacher.new(age ,name, specialization)
        else
          puts 'Invalid input, person not created'
        end
      end
    def create_book
        puts "Title:"
        title = gets.chomp
        puts "Author:"
        author = gets.chomp
        @books << Book.new(title, author)
        puts "Book created successfuly!"
    end
    def create_rental
        
    end
end
