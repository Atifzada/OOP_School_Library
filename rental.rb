class Rental
  attr_accessor :date
  attr_reader :rentals, :book

  def initialize(book, person, date)
    @book = book
    @person = person
    @date = date
    book.rentals = self
    person.rentals = self
  end
end
