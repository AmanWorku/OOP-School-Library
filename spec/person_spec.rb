require_relative '../person'
require_relative '../book'
require_relative '../rental'

describe Person do
  let(:person) { Person.new(20, 'Lolo', parent_permission: true) }

  it 'Check if it is an instance of the class Person' do
    expect(person).to be_instance_of(Person)
  end

  it 'Check the name of the person' do
    expect(person.name).to eq('Lolo')
  end

  it 'Check the age of the person' do
    expect(person.age).to eq(20)
  end

  it 'Check if the person can use services' do
    expect(person.can_use_services?).to be_truthy
  end

  it 'Check the rentals of the person' do
    expect(person.rentals).to be_empty
  end

  it 'The add_rental method returns a rental and adds it to the book' do
    book = Book.new('Title', 'Author')
    person = Person.new(20, 'Lolo')
    puts "rentals before add_rental: #{person.rentals}"
    rental = person.add_rental(book, '12/05/2023')
    puts "rentals after add_rental: #{person.rentals}"
    expect(person.rentals).to eql [rental]
  end
end
