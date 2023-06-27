require_relative '../classroom'
require_relative '../student'

RSpec.describe Classroom do
  context 'When assigning a student to a classroom' do
    it 'successfully adds the student to the classroom' do
      new_student = Student.new(Classroom.new('Math'), 12, 'Student1', true)
      new_classroom = Classroom.new('Math')
      new_classroom.add_student(new_student)

      expect(new_classroom.students[0].name).to eq('Student1')
      expect(new_student.classroom.label).to eq('Math')
    end
  end
end
