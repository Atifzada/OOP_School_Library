require_relative './person'

class Student < Person
  def initialize(age, _name = 'Unknown', parent_permission: true)
    super(classroom , id, age, name, parent_permission: true)
    @classroom = classroom
  end

  def classroom(classroom)
    @classroom = classroom
    @classroom.students << self unless classroom.students.include(self)

  def play_hooky
    '¯(ツ)/¯'
  end
end
