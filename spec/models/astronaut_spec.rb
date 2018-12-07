require 'rails_helper'

describe Astronaut, type: :model do
  describe 'Validations' do
    it { should validate_presence_of :name }
    it { should validate_presence_of :age }
    it { should validate_presence_of :job }
  end

  describe 'Relationships' do
    it { should have_many :astronaut_missions}
    it { should have_many :missions}
  end

  describe 'class method' do
    it 'avg_age()' do
      astronaut_1= Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      astronaut_1= Astronaut.create(name: "Maddie Jones", age: 31, job: "Tech")

      expect(Astronaut.avg_age).to eq(34)

    end
  end
end
