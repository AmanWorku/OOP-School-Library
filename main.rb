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

    when 5

    when 6

    when 7

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
end
