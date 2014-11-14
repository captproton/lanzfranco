require "test_helper"

class BookTest < ActiveSupport::TestCase

  def book
    @book ||= Book.new
  end

  def test_valid
    assert book.valid?
  end

end
