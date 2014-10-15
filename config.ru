require './app'

map '/mix.wav' do
  run Rack::File.new("./tmp/mix.wav")
end

run Sinatra::Application

