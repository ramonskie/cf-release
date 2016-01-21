require 'sinatra'

get '/hi' do
    "Hello World!"
end

put '/v2/buildpacks/014a4c43-4a9b-416f-b4e1-5d1c9f8f145b/bits' do
    puts "got stuff!"
      "some thing"
end
