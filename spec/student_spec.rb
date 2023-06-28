require_relative '../student'

describe Student do
  let(:classroom) { double('Classroom', students: []) }
  let(:student) { Student.new(classroom, 18, 'John Doe', true) }

  it 'has a classroom' do
    expect(student.classroom).to eq(classroom)
  end

  it 'can play hooky' do
    expect(student.play_hooky).to eq('¯(ツ)/¯')
  end
end
