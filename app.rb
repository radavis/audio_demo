require 'sinatra'

get '/' do
  @files = Dir["public/*.wav"].map { |file| file.split('/')[1] }
  erb :index
end

get '/mix' do
  `sox public/a.wav public/c_sharp.wav public/mix.wav &`
  redirect '/'
end

get '/remove_mix' do
  `rm public/mix.wav`
  redirect '/'
end
