# Homepage (Root path)
get '/' do
  erb :'tracks/index'
end

get '/tracks' do
  @tracks = Track.all
  erb :'tracks/index'
end

get '/tracks/new' do
  @track = Track.new
  erb :'tracks/new'
end

post '/tracks' do
  @track = Track.new(
    title: params[:title],
    artist: params[:artist],
    author: params[:author],
    url: params[:url]
  )
  if
    @track.save
    redirect '/tracks'
  else
    erb :'tracks/new'
  end
end