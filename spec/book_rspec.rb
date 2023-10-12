require_relative '../book'
require_relative '../person'

describe Book do
  let(:book) { Book.new('Rich father, poor father', 'Robert K.') }

  describe 'title' do
    it 'returns the title' do
      expect(book.title).to eq('Rich father, poor father')
    end
  end

  describe 'author' do
    it 'returns the author' do
      expect(book.author).to eq('Robert K.')
    end
  end

  describe 'rentals' do
    let(:person) { Person.new(35, 'Nelson', parent_permission: true) }
    it 'creates a new rental object and adds it to the rentals array' do
      book.add_rental(person, '2023-10-11')
      expect(book.rental.length).to eq(1)
    end
  end
end
