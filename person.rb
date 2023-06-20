class Person
  attr_reader :id, :name, :age
  attr_accessor :name, :age

  def initialize(id, age, parent_permission: true, name: 'unknown')
    @id = Random.rand(1..1000)
    @name = name
    @age = age
    @parent_permission = parent_permission
  end

  private

  def of_age?
    @age >= 18
  end

  def can_use_services?
    @age >= 18 || @parent_permission
  end
end

n1 = Person.new(1, 19, name: 'Atif')
puts n1.of_age?
