require_relative '../book'

RSpec.describe Book do
  context 'When you create a new book' do
    it ' book must have the correct title' do
      new_book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
      expect(new_book.title).to eq('The Great Gatsby')
    end

    it 'must have the correct author' do
      new_book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
      expect(new_book.author).to eq('F. Scott Fitzgerald')
    end

    it 'must have an empty rentals array' do
      new_book = Book.new('The Great Gatsby', 'F. Scott Fitzgerald')
      expect(new_book.rentals).to be_empty
    end
  end
end
