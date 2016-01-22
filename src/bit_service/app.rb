require 'sinatra'
require 'fileutils'

put '/v2/buildpacks/:guid/bits' do |guid|
    puts "guid: " + guid
    path = params["#{'buildpack'}_path"]
    puts "path: " + path.to_s

    FileUtils.mv(path.to_s, guid)
    "ok"
end

get '/v2/buildpacks/:guid/download' do |guid|
    path = '/bosh-lite.com-cc-buildpacks/' + guid
    puts path
    headers "X-Accel-Redirect" => path
end
