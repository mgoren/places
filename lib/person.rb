class Person
  @@people = []
  define_method(:initialize) do |name|
    @name = name
    @places_object = Places.new()
  end

  define_method(:get_name) do
    @name
  end

  define_method(:get_places) do
    @places_object
  end

  define_singleton_method(:add_user) do |person|
    @@people.push(person)
  end

  # search @@people
  define_singleton_method(:search_users) do |username|
    @@people.each() do |user|
      if user.get_name() == username
        return user
      end
    end
  end


end








# OLD
# class Person
#
#   define_method(:initialize) do
#     @place_names = []
#   end
#
#   define_method(:add_place) do |place_name|
#     place_name_split = place_name.split()
#     place_name_split.each() do |word|
#       word.capitalize!()
#     end
#     place_name = place_name_split.join(" ")
#     @place_names.push(place_name)
#   end
#
#   define_method(:show_places) do
#     @place_names
#   end
#
# end
