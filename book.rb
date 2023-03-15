class Book
    initialize(title, author)
        @title = title
        @author = author
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