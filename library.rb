class Library
  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_books()
    @books
  end

  def book_by_title(title)
    for book in @books
      return book[:rental_details] if book[:title] == title
    end
  end




end
