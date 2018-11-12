require 'sinatra'


get '/' do
	erb :name
end
post '/name' do
	firstname = params[:f_name]
	redirect '/lastname?f_name=' + firstname
end
get '/lastname' do
	f_name = params[:f_name]
 	erb :lastname, locals: {f_name: f_name}
end
post '/last_name' do
	firstname = params[:f_name]
	last_name = params[:l_name]
	redirect '/age?f_name=' + firstname + '&l_name=' + last_name
end

get '/age' do
	last_name = params[:l_name]
	firstname = params[:f_name]
	erb :age, locals: {last_name: last_name, firstname: firstname}
end
post '/age_r' do
	puts "This is params #{params}"
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:u_age]
	p "age: #{age}"
	redirect '/favcolor?firstname=' + firstname + '&last_name=' + last_name + '&u_age=' + age
end
get '/favcolor' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:u_age]
	erb :favcolor, locals: {last_name: last_name, firstname: firstname, age: age}
end