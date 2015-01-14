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

  define_singleton_method(:get_all_usernames) do
    all_names = []
    @@people.each() do |person|
      all_names.push(person.get_name())
    end
    all_names
  end

end
