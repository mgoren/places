require('rspec')
require('places')

describe(Places) do

  before() do
    Places.clear()
  end

  describe('#place') do
    it("lets you provide and returns a place") do
      test_place = Places.new("Rwanda")
      expect(test_place.place()).to(eq("Rwanda"))
    end
  end

describe('.clear') do
  it("clears list of places") do
    expect(Places.clear()).to(eq([]))
  end
end

  describe('.all') do

    it("gives an empty list of places") do
      expect(Places.all()).to(eq([]))
    end

    it("saves places") do
      place1 = Places.new("Rwanda")
      place2 = Places.new("New Zealand")
      place3 = Places.new("Costa Rica")
      place1.save()
      place2.save()
      place3.save()
      expect(Places.all()).to(eq([place1, place2, place3]))
    end

  end








end
