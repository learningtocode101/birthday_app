require 'sinatra/base'

class Birthday< Sinatra::Base
enable :sessions
  get '/'do
    erb :index
  end

  post '/details' do
    session[:name] = params[:name]
    session[:day] = params[:day]
    session[:month] = params[:month]
    redirect to('/wishes')
  end

  get '/wishes' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :wishes
  end

run! if app_file == $0
end
