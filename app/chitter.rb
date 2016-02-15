ENV['RACK_ENV'] ||= 'development'

require 'sinatra/base'
# require_relative 'models/peep'
require_relative 'data_mapper_setup'

class Chitter < Sinatra::Base
  get '/' do
    erb :index
    # 'Hello Chitter!'
  end

# Peeps
  get '/peeps' do
    @peeps = Peep.all
    erb :peeps
  end

  get '/peeps/new' do
    erb :peeps_new
  end

  post '/peeps' do
    Peep.create(body: params[:body],
                title: params[:title])
    redirect to('/peeps')
  end

# Users
  get '/users/new' do
    erb :'users/new'
  end

  post '/users' do
    User.create(email: params[:email],
                password: params[:password])
    redirect to('/peeps')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
