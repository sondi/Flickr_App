get '/' do
	@photo = Photo.all
  # La siguiente linea hace render de la vista 
  # que esta en app/views/index.erb
  erb :index
end

post '/upload' do
  @photo = Photo.new(params[:photo])
  @photo.save!

  redirect '/'
end

