class Places
  @@places = []

  define_method(:initialize) do |place|
    place_split = place.split()
    place_split.each() do |word|
      word.capitalize!()
    end
    place = place_split.join(" ")
    @place = place
  end

  define_singleton_method(:clear) do
    @@places = []
  end

  define_singleton_method(:all) do
    @@places
  end

  define_method(:save) do
    @@places.push(self)
  end

  define_method(:place) do
    @place
  end
end
