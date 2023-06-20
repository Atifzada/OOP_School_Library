require_relative './person'

class Student < Person
  def initialize(_age, _name = 'Unknown', parent_permission: true)
    super(id)
    @classroom = classroom
  end

  def play_hooky
    '¯(ツ)/¯'
  end
end
