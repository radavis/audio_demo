require 'sinatra'

get '/' do
  @files = Dir["public/*.wav"].map { |file| file.split('/')[1] }
  @files += Dir["tmp/*.wav"]
  erb :index
end

get '/mix' do
  `sox public/a.wav public/c_sharp.wav tmp/mix.wav &`
  redirect '/'
end

get '/remove_mix' do
  `rm tmp/mix.wav`
  redirect '/'
end

get '/listen' do
  send_file('./tmp/mix.wav')
end
