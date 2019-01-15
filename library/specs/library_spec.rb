
require('minitest/autorun')
require('minitest/rg')
require_relative('../library.rb')

class TestLibrary < MiniTest::Test

  def setup

    @library = [
      {
        title: "the_vertical_plane",
        rental_details: {
          student_name: "Thomas",
          date: "18/11/19"
        }
      },

      {
        title: "the_book_of_the_dead",
        rental_details: {
          student_name: "Ash",
          date: "04/03/19"
        }
      },
        {
        title: "that_hideous_strength",
        rental_details: {
          student_name: "Clive",
          date: "06/07/19"
        }
      }
      ]


  end

  def test_get_books
    books = get_books(@library, "the_vertical_plane")
    assert_equal("the_vertical_plane", books[:title])
  end


end
