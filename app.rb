require_relative 'config/environment'

class App < Sinatra::Base
  get '/' do
    #erb :index
    "Pig Latinizer!"
    erb :user_input
  end

  post '/piglatinize' do
    @piglat = PigLatinizer.new.to_pig_latin(params[:user_phrase])
    erb :results
  end

  # post
end