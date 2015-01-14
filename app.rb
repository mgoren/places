require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/places')
require('./lib/place')
require('./lib/person')
require('./lib/people')
require('pry')

get("/") do
  erb(:index)
end

post("/confirmation") do

  place = params.fetch('place')
  if place != ""
    new_place = Place.new(place)
    Person.search_users("mike").get_places().add_place(new_place)
    @place = new_place.get_place_name()
  else
    @place = place
  end
  @name = Person.search_users("mike").get_name()
  redirect("/:name")
end

get("/:name/reset") do
  Person.search_users("mike").get_places().clear()
  erb(:reset)
end


get("/:name") do
  @username = params.fetch('name')
  user = Person.new(@username)
  Person.add_user(user)

  @places = Person.search_users("mike").get_places().all()
  erb(:index)

end
