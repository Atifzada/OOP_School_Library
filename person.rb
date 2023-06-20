class Person
  attr_accessor :age, :name
  attr_reader :id

  def initialize(_id, age, parent_permission: true, name: 'unknown')
    @id = Random.rand(1..1000)
    @age = age
    @parent_permission = parent_permission
    @name = name
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
