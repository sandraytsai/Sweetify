# Homepage (Root path)
get '/' do
  erb :index
end

get '/users/signup' do 
  erb :'users/signup'
end 

post '/users' do 
  @user = User.new(
    username: params[:first_name],
    email: params[:last_name],
    password: params[:email],
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
    session[:login_error] = "E-mail or password is invalid! Please try again."
    erb :'users/login'
  end
end 

get '/users/logout' do
  session.clear
  redirect '/'
end 






