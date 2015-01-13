require('sinatra')
require('sinatra/reloader')
also_reload('./lib/**/*.rb')
require('./lib/places')

get("/") do
  @places = Places.all()
  erb(:index)
end

post("/confirmation") do
  @place = params.fetch('place')
  if @place != ""
    place = Places.new(@place)
    place.save()
  end
  erb(:confirmation)
end

get("/reset") do
  Places.clear()
  erb(:reset)
end
