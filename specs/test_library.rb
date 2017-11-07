require 'minitest/autorun'
require 'minitest/rg'
require_relative "../library.rb"

class TestLibrary < MiniTest::Test

  def setup

    @books = [
      {
        title: "Oi, Frog",
        rental_details: {
          student_name: "Dylan",
          date: "30/11/17"
        }
      },
      {
        title: "What the Ladybird Heard",
        rental_details: {
          student_name: "Alice",
          date: "10/12/2017"
        }
      },
      {
        title: "Silly Satsuma",
        rental_details: {
          student_name: "Anna",
          date: "08/01/2018"
        }
      }
    ]

    @library = Library.new(@books)

  end

  def test_list_books
    result = @library.list_books
    assert_equal(3, result.count)
  end

  def test_book_by_title
    result = @library.book_by_title("Oi, Frog")
    assert_equal({student_name: "Dylan",
    date: "30/11/17"}, result)
  end



end
