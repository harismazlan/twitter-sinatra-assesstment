get '/twits/new' do
	erb :"twits/new"
end

get '/twits/failure' do
	erb :"error/problem.html"
end

post '/twits/new' do
	@twit = Twit.new(params[:twit])
	if @twit.save
		@twit.save
		redirect to "/twits/#{@twit.id}"
	else
		redirect to "/twits/failure"
	end
end

get '/twits/:id' do
	@twit = Twit.find(params[:id])
    erb :"twits/show"
end

get '/twits' do
	@twits = Twit.all
	erb :"twits/index"
end

get '/twits/:id/edit' do
	@twit = Twit.find(params[:id])
	erb :"twits/edit"
end

patch '/twits/:id/edit' do
	@twit = Twit.find(params[:id])
	@twit.update(params[:twit])
	@twit.save
	redirect to "/twits/#{@twit.id}"
end

get '/twits/:id/delete' do
	@twit = Twit.find(params[:id])
	erb :"twits/delete"
end

delete '/twits/:id/delete' do
  @twit = Twit.find(params[:id])
  @twit.delete
  redirect to '/twits'
end
