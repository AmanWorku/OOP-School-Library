def create_book
    puts "Title:"
    title = gets.chomp
    puts "Author:"
    author = gets.chomp
    puts "Book created successfuly!"
    @books << Book.new(title, author, isbn)
end