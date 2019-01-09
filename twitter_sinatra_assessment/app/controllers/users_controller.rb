get '/users/profile/:id' do
  @user = User.find(params[:id])
  erb :"users/profile"
end

get '/users/:id/twits' do
	@selected_twits = Twit.where(:user_id => params[:id])
	erb :"users/user_index"
end

get '/mytwits' do
	erb :"users/my_twits"
end

# post '/users/:id' do
# 	redirect to "users/profile"
# end