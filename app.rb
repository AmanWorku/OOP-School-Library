require './student'
require './person'

class App
    def list_people
        @people.each do |person|
          puts "#{person.class.name} Name: #{person.name} | ID: #{person.id}"
    end
end
