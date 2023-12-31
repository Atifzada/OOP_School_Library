require_relative '../person'

RSpec.describe Person do
  context 'When initializing a person' do
    it 'should set the person\'s age correctly' do
      new_person = Person.new(24, 'Atif', true)
      expect(new_person.age).to eq(24)
    end

    it 'should set the person\'s name correctly' do
      new_person = Person.new(12, 'Khan Zada', false)
      expect(new_person.name).to eq('Khan Zada')
    end
  end

  context 'When calling methods on a person' do
    let(:person) { Person.new(19, 'Atif', true) }

    it 'should return the correct name' do
      expect(person.correct_name).to eq('Atif')
    end

    it 'should determine if the person can use services' do
      expect(person.can_use_services?).to eq(true)
    end
  end
end
