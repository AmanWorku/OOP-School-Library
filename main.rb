require './app'

class Main
  def initialize
    @app = App.new
  end
  puts 'Welcome to School Library'
  
end

main = Main.new
main.run
