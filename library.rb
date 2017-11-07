class Library
  attr_accessor :books

  def initialize(books)
    @books = books
  end

  def list_books()
    @books
  end

  # def book_by_title(title)
  #   if @books[:title] = title
  #     return @books[:rental_details]
  #   end
  # end


end
