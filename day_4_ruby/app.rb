require "sinatra"
require "data_mapper"

DataMapper.setup(:default, "sqlite://#{Dir.pwd}/data.db")

use Rack::MethodOverride

# this will enable us to use sessions in our application
enable :sessions

helpers do
  def protected!
    return if authorized?
    headers['WWW-Authenticate'] = 'Basic realm="Restricted Area"'
    halt 401, "Not authorized\n"
  end

  def authorized?
    @auth ||=  Rack::Auth::Basic::Request.new(request.env)
    @auth.provided? and @auth.basic? and @auth.credentials and @auth.credentials == ['admin', 'password']
  end
end

# this makes DataMapper generate a table called "contacts"
class Contact
  # this injects a bunch of methods from the DataMapper gem
  # that we can use to create the table and query the Database
  include DataMapper::Resource
  # Serial => INTEGER PRIMARY KEY AUTOINCREMENT
  property :id, Serial

  property :name, String
  property :email, String
  property :message, Text
  property :note, Text

end

# this created the database table if it doesn't exist
# if the database table exists then it will just add missing columns
Contact.auto_upgrade!

get "/" do
  erb :index, layout: :application
end

get "/temp_convertor" do
  erb :temp_convertor, layout: :application
end

post "/temp_convertor" do
  # All the paremter that were submitted by the user are received here in
  # Sinatra by an object called params which is a Hash
  # The key is the HTML "name" attribute supplied to the field
  # the value is what the user has entered in the field
  # so if my field is <input type="text" name="greeting">
  # and the user has entered "Hello" in the text field. Then the params hash will be:
  # {"greeting" => "Hello"}
  # all the values will be strings every if the user enters number in them.
  @temperature_in_c = params[:temp].to_f
  @temperature_in_f = @temperature_in_c * 9 / 5 + 32
  erb :temp_convertor, layout: :application
end

get "/pick_winner" do
  erb :pick_winner, layout: :application
end

post "/pick_winner" do
  @names      = params[:players]
  names_array = @names.split(",")
  @winner     = names_array.sample
  erb :pick_winner, layout: :application
end

get "/contact" do
  erb :contact, layout: :application
end

post "/contact" do
  Contact.create({name: params[:name],
                  email: params[:email],
                  message: params[:message]})
  "Thank you #{params[:name]} for contacting us"
end

get "/all_contacts" do
  protected!
  # Contact.all will fetch all the contact records form the contacts table
  # SELECT * FROM contacts;
  @contacts = Contact.all
  erb :all_contacts, layout: :application
end

# this URL will match /contact/ANYTHING
# for instance:
# /contact/abc
# /contact/1
# /contact/123
get "/contact/:id" do |id|
  protected!
  # Contact.get will fetch a single record from the database
  # with the given id
  @contact = Contact.get(id)
  session[:last_visited_user] = @contact.name
  erb :single_contact, layout: :application
end

patch "/contact/:id" do |id|
  protected!
  @contact = Contact.get id
  @contact.note = params[:note]
  @contact.save
  redirect to("/contact/#{id}")
end

get "/change_color/:color" do |color|
  session[:background_color] = color
  redirect to("/")
end
