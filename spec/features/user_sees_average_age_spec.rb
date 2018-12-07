require 'rails_helper'

describe 'as a visitor' do
  describe 'when I visit /astronauts' do
    it 'should show the avg age for astronauts' do
      astronaut_1= Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      astronaut_1= Astronaut.create(name: "Maddie Jones", age: 31, job: "Tech")

      visit astronauts_path

    expect(page).to have_content("Average Age : #{Astronaut.avg_age}")
    end
  end
end
