require('rspec')
require('person')
require('places')
require('place')

describe(Person) do

  describe('#name') do
    it("takes a person's name") do
      test_person = Person.new("Mike")
      expect(test_person.name()).to(eq("Mike"))
    end
  end

  describe('.get_place') do
    it("adds and retrieves a person's Places list") do

      rwanda = Place.new("Rwanda")
      nz = Place.new("New Zealand")
      costarica = Place.new("Costa Rica")

      mike_places = Places.new()
      mike_places.add_place(rwanda)
      mike_places.add_place(nz)
      mike_places.add_place(costarica)

      mike = Person.new("Mike")

      expect(mike.get_places()).to(eq(mike_places))

    end
  end









end
