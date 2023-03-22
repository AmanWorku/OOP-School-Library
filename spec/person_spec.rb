require_relative '../person'

describe Person do
  let(:person) { Person.new(20, 'Lolo', parent_permission: true) }

  it 'Chech if it is an instance of the class Person' do
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
end
