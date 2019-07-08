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

  describe "class methods" do
    it ".average_age" do
      neil = Astronaut.create(name: "Neil Armstrong", age: 37, job: "Commander")
      buzz = Astronaut.create(name: "Buzz Aldrin", age: 45, job: "Engineer")
      sally = Astronaut.create(name: "Sally Ride", age: 33, job: "Navigator")

      expect(Astronaut.average_age.round(2)).to eq(38.33)
    end
  end
end
