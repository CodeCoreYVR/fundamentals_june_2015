# requiring the Sinatra gem in here so we can use it
require "sinatra"
require "faker"

# GET is the HTTP verb
# "/" is the URL > Home page
# "Hello CodeCore Studnets" is the response we're sending back
get "/" do
  # this will render the file index.erb located inside the views folder
  erb :index, layout: :application
end

get "/contact" do
  @name = "Tam"
  @title = "Contact Us"
  erb :contact, layout: :application
end

get "/about" do
  "This is my first Sinatra application"
end

get "/random" do
  # erb(:random, {layout: :application})
  erb :random, layout: :application
end

post "/random" do
  @random = rand(100)
  erb :random, layout: :application
end

get "/company_catch_phrase" do
  erb :company_catch_phrase, layout: :application
end

post "/company_catch_phrase" do
  @phrase = Faker::Company.catch_phrase
  erb :company_catch_phrase, {layout: :application}
end
