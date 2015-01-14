require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/places')
require('./lib/place')
require('./lib/person')
require('pry')

post("/confirmation") do
  username = params.fetch('username')
  place = params.fetch('place')
  if place != ""
    new_place = Place.new(place)
    Person.search_users(username).get_places().add_place(new_place)
    @place = new_place.get_place_name()
  else
    @place = place
  end
  @name = Person.search_users(username).get_name()
  url = "/".concat(username)
  redirect(url)
end

post("/reset") do
  username = params.fetch('username')
  Person.search_users(username).get_places().clear()
  url = "/".concat(username)
  redirect(url)
end

get("/:username") do
  @username = params.fetch('username')
  @places = Person.search_users(@username).get_places().all()
  @people = Person.get_all_usernames()
  erb(:main)
end

post("/adduser") do
  @username = params.fetch('username')
  user = Person.new(@username)
  Person.add_user(user)
  url = "/".concat(@username)
  redirect(url)
end

get("/") do
  erb(:index)
end
