require('rspec')
require('person')

describe(Person) do

  describe('#name') do
    it("takes a person's name") do
      test_person = Person.new("Mike")
      expect(test_person.name()).to(eq("Mike"))
    end
  end









end
