class Places

  define_method(:initialize) do
    @places_list = []
  end

  define_method(:add_place) do |place|
    @places_list.push(place)
  end

  define_method(:clear) do
    @places_list = []
  end

  define_method(:all) do
    @places_list
  end

end
