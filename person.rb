require_relative './nameable'

class Person < Nameable
  attr_accessor :age, :name, :rentals
  attr_reader :id

  def initialize(id, age, parent_permission: true, name: 'unknown')
    super()
    @id = Random.rand(1..1000)
    @age = age
    @parent_permission = parent_permission
    @rentals = []
  end

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end

  def correct_name
    @name
  end
  
  def add_rental(book, date)
    Rental.new(date, book, self)
  end
end

n1 = Person.new(1, 19, name: 'Atif')
puts n1.of_age?
