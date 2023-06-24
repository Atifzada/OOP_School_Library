class Rental
  attr_accessor :book, :person
  attr_reader :date

  def initialize(book, person, date)
    @book = book
    @person = person
    @date = date
    book.rentals = self
    person.rentals = self
  end
end
