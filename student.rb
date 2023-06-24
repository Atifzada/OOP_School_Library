require_relative 'person'

class Student < Person
  attr_accessor :name, :age, :parent_permission
  attr_reader :classroom

  def initialize(name, age, parent_permission)
    super(age, name, parent_permission)
    @classroom = nil
  end

  def classroom=(classroom)
    @classroom = classroom
    @classroom.students << self unless @classroom.students.include?(self)
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
