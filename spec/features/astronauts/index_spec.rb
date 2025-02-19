require 'rails_helper'

RSpec.describe 'astronaut index page' do
  describe 'as a visitor' do
    it 'I see all astronaut information' do
      neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      buzz = Astronaut.create(name: "Buzz Aldrin", age: 45, job: "Engineer")
      sally = Astronaut.create(name: "Sally Ride", age: 33, job: "Navigator")

      visit astronauts_path

      within "#astronaut-#{neil.id}" do
        expect(page).to have_content(neil.name)
        expect(page).to have_content("Age: #{neil.age}")
        expect(page).to have_content("Job: #{neil.job}")
      end

      within "#astronaut-#{buzz.id}" do
        expect(page).to have_content(buzz.name)
        expect(page).to have_content("Age: #{buzz.age}")
        expect(page).to have_content("Job: #{buzz.job}")
      end

      within "#astronaut-#{sally.id}" do
        expect(page).to have_content(sally.name)
        expect(page).to have_content("Age: #{sally.age}")
        expect(page).to have_content("Job: #{sally.job}")
      end
    end
  end
end
