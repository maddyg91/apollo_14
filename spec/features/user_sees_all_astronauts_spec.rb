require 'rails_helper'

describe 'as a visitor' do
  describe 'when I visit /astronauts' do
    it 'should show all astronauts with name age and job' do
      astronaut_1= Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")

      visit astronauts_path

      expect(page).to have_content(astronaut_1.name)
      expect(page).to have_content(astronaut_1.age)
      expect(page).to have_content(astronaut_1.job)
    end
  end
end
