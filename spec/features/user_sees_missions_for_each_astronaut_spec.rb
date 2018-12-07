require 'rails_helper'

describe 'as a visitor' do
  describe 'when I visit /astronauts' do
    it 'should show list of space missions for astronaut' do
      astronaut_1= Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      astronaut_1= Astronaut.create(name: "Maddie Jones", age: 31, job: "Tech")

      mission_1= astronaut_1.missions.create(title: "Apollo 13", time_in_space: 4000 )
      mission_2= astronaut_1.missions.create(title: "Gemini 7", time_in_space: 3000 )

      visit astronauts_path

    expect(page).to have_content(mission_1.title)
    expect(page).to have_content(mission_2.title)
    end
  end
end
