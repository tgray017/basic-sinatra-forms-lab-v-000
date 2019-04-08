require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end
  
  post '/team' do
    params.each do |k, v| 
      binding.pry
      send("@#{k} =", v)
    end
    erb :team
  end

end
