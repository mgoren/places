require('rspec')
require('place')
require('places')

describe(Place) do
  describe('#place') do
    it("lets you provide and returns a place") do
      test_place = Place.new("Rwanda")
      expect(test_place.get_place_name()).to(eq("Rwanda"))
    end
  end
end

describe(Places) do

  describe('#clear') do
    it("clears list of places") do
      rwanda = Place.new("Rwanda")
      nz = Place.new("New Zealand")
      mike_places = Places.new()
      mike_places.add_place(rwanda)
      mike_places.add_place(nz)
      expect(mike_places.clear()).to(eq([]))
    end
  end

  describe('.all') do

    it("gives an empty list of places") do
      mike_places2 = Places.new()
      expect(mike_places2.all()).to(eq([]))
    end

    it("saves places") do
      mike_places3 = Places.new()
      rwanda = Place.new("Rwanda")
      nz = Place.new("New Zealand")
      costarica = Place.new("Costa Rica")
      mike_places3 = Places.new()
      mike_places3.add_place(rwanda)
      mike_places3.add_place(nz)
      mike_places3.add_place(costarica)
      expect(mike_places3.all()).to(eq([rwanda, nz, costarica]))
    end

  end

end
