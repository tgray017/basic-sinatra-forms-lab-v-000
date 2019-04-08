require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end
  
  post '/team' do
    params.each {|k, v| params.send("#{k}=", v)}
    erb :team
  end

end
