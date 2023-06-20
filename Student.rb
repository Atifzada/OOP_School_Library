require_relative './Person.rb'

class Student < Person
    def initialize (classroom)
        @classroom = classroom
        super(id, name, age, parent_permission: true)
    end
    
    def play_hooky
        '¯(ツ)/¯'
      end
    end