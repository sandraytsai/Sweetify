# Homepage (Root path)
helpers do 
  def current_user
    User.find_by(id: session[:id])
  end

  def not_signed_in?
    session[:id].nil?
  end

  def current_session_user 
    session[:id]
  end 
end

get '/' do
   erb :index
end

get '/users/signup' do 
  erb :'users/signup'
end 

post '/users' do 
  @user = User.new(
    username: params[:username],
    email: params[:email],
    password: params[:password],
    )
  if @user.save
    session[:id] = @user.id
    redirect '/'
  else
    erb :'users/signup'
  end 
end 

get '/users/login' do
  session.delete(:login_error)
  erb :'users/login'
end 

post '/userlogin' do
  @user = User.find_by(username: params[:username]).try(:authenticate, params[:password])
  if @user 
    session.delete(:login_error)
    session[:id] = @user.id
    redirect '/'
  else 
    session.delete(:id)
    session[:login_error] = "Username or password is invalid! Please try again."
    erb :'users/login'
  end
end 

get '/users/logout' do
  session.clear
  redirect '/'
end 

get '/restaurants/foodimize' do 
  @restaurant = Restaurant.all.sample 
  redirect "/restaurants/#{@restaurant.id}"
end

get '/restaurants_users/:id' do 
  @restaurant = Restaurant.find(params[:id])
  current_user.restaurants << @restaurant
  redirect "/users/favorites"
end

get '/users/favorites' do
  erb :'users/favorites'
end 


get '/restaurants/:id' do
  @restaurant = Restaurant.find(params[:id])
  erb :'restaurants/show' 
end 



