require_relative '../teacher'

describe Teacher do
  let(:teacher) { Teacher.new(35, 'Mathematics', 'Jane Smith', parent_permission: true) }

  it 'has a specialization' do
    expect(teacher.specialization).to eq('Mathematics')
  end

  it 'can use services' do
    expect(teacher.can_use_services?).to be true
  end

end
