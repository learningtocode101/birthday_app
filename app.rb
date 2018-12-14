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
    redirect to('/greetings')
  end

  get '/greetings' do
    @name = session[:name]
    @day = session[:day]
    @month = session[:month]
    erb :greetings
  end

run! if app_file == $0
end
