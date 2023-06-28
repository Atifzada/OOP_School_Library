require_relative '../capitalize_decorator'
require_relative '../person'
require_relative '../trimmer_decorator'

describe CapitalizeDecorator do
  let(:nameable) { double('Nameable', correct_name: 'atifkhanzada') }
  let(:decorator) { CapitalizeDecorator.new(nameable) }

  context 'When capitalizing a person\'s name' do
    it 'should decorate the name with proper capitalization' do
      allow(nameable).to receive(:correct_name).and_return('atifkhanzada')
      expect(decorator.correct_name).to eq('Atifkhanzada')
    end
  end
end

describe TrimmerDecorator do
  let(:nameable) { double('Nameable') }
  let(:decorator) { TrimmerDecorator.new(nameable) }

  context 'When trimming a name' do
    context 'when the name has more than 10 characters' do
      it 'should trim the name to 10 characters' do
        allow(nameable).to receive(:correct_name).and_return('AtifKhanZada')

        expect(decorator.correct_name).to eq('AtifKhanZa')
      end
    end

    context 'when the name has 10 or fewer characters' do
      it 'should not trim the name' do
        allow(nameable).to receive(:correct_name).and_return('John')

        expect(decorator.correct_name).to eq('John')
      end
    end
  end
end
