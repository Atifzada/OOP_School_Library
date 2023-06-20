require_relative './person'

class Student < Person
  def initialize(age, _name = 'Unknown', parent_permission: true)
    super(id, age, parent_permission: parent_permission)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
