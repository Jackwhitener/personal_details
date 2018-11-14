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
	redirect '/lucknums1?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor
end
get '/lucknums1' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	erb :lucknums1, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor}
end
post '/luck_nums1' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	redirect '/lucknums2?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&num1=' + num1
end
get '/lucknums2' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	erb :lucknums2, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor, num1: num1}
end
post '/luck_nums2' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	redirect '/lucknums3?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&num1=' + num1 + '&num2=' + num2
end
get '/lucknums3' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	erb :lucknums3, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor, num1: num1, num2: num2}
end
post '/luck_nums3' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	redirect '/favanimal?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3
end
get '/favanimal' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	erb :favanimal, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor, num1: num1, num2: num2, num3: num3}
end
post '/f_animal' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	favanimal = params[:f_animal]
	redirect '/final_page?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&favanimal=' + favanimal
end
get '/final_page' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	favanimal = params[:favanimal]
	erb :finalpage, locals: {last_name: last_name, firstname: firstname, age: age, favcolor: favcolor, num1: num1, num2: num2, num3: num3, favanimal: favanimal}
end
post '/finalpage' do
	last_name = params[:last_name]
	firstname = params[:firstname]
	age = params[:age]
	favcolor = params[:favcolor]
	num1 = params[:num1]
	num2 = params[:num2]
	num3 = params[:num3]
	favanimal = params[:favanimal]
	redirect '/final_page?firstname=' + firstname + '&last_name=' + last_name + '&age=' + age + '&favcolor=' + favcolor + '&num1=' + num1 + '&num2=' + num2 + '&num3=' + num3 + '&favanimal=' + favanimal
end