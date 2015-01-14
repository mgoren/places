class Place

  define_method(:initialize) do |place|
    place_split = place.split()
    place_split.each() do |word|
      word.capitalize!()
    end
    place = place_split.join(" ")
    @place = place
  end

  define_method(:get_place_name) do
    @place
  end

end
