def create_book
    puts "Enter the title of the book:"
    title = gets.chomp
    puts "Enter the author of the book:"
    author = gets.chomp
    puts "Enter the ISBN of the book:"
    isbn = gets.chomp.to_i

    @books << Book.new(title, author, isbn)
end