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
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:u_age]
	redirect '/favcolor?firstname=' + firstname + '&last_name=' + last_name + '&u_age=' + age
end
get '/favcolor' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:u_age]
	erb :favcolor, locals: {last_name: last_name, firstname: firstname, age: age}
end
post '/fav_color' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:f_color]
	redirect '/lucknums?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor
end
get '/lucknums' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	erb :lucknums, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor}
end
post '/luck_nums' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	lucknum1 = params[:num1]
	lucknum2 = params[:num2]
	lucknum3 = params[:num3]
	redirect '/favanimal?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&lucknum1=' + lucknum1 + '&lucknum2=' + lucknum2 + '&lucknum3=' + lucknum3
end
get '/favanimal' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	lucknum1 = params[:num1]
	lucknum2 = params[:num2]
	lucknum3 = params[:num3]
	erb :favanimal, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor, lucknum1: lucknum1, lucknum2: lucknum2, lucknum3: lucknum3}
end
post 'fav_animal' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	lucknum1 = params[:lucknum1]
	lucknum2 = params[:lucknum2]
	lucknum3 = params[:lucknum3]
	favanimal = params[:f_animal]
	redirect '/end?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&lucknum1=' + lucknum1 + '&lucknum2=' + lucknum2 + '&lucknum3=' + lucknum3 + '&favanimal' + favanimal
end
get '/finalpage' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	lucknum1 = params[:num1]
	lucknum2 = params[:num2]
	lucknum3 = params[:num3]
	favanimal = params[:f_animal]
	erb :finalpage, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor, lucknum1: lucknum1, lucknum2: lucknum2, lucknum3: lucknum3, favanimal: favanimal}
end
post 'final_page' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	lucknum1 = params[:lucknum1]
	lucknum2 = params[:lucknum2]
	lucknum3 = params[:lucknum3]
	favanimal = params[:favanimal]
	redirect '/final_page?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&lucknum1=' + lucknum1 + '&lucknum2=' + lucknum2 + '&lucknum3=' + lucknum3 + '&favanimal' + favanimal
end