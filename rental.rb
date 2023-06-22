class Rental
  attr_accessor :date, :book, :person
  attr_reader :rentals

  def initialize(book, person, date)
    @book = book
    @person = person
    @date = date
    book.rentals = self
    person.rentals = self
  end
end
