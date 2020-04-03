require 'net/http'
require 'json'
class SayController < ApplicationController



  def hello
    uri = URI('http://api.giphy.com/v1/gifs/search?q=hello&limit=10&api_key=dc6zaTOxFJmzC')
    @time = Time.now
    response = Net::HTTP.get(uri)
    @giphys = JSON.parse(response)
  end

  def goodbye
    @files = Dir.glob('*')
    uri = URI('http://api.giphy.com/v1/gifs/search?q=bye&limit=10&api_key=dc6zaTOxFJmzC')
    @time = Time.now
    response = Net::HTTP.get(uri)
    @giphys = JSON.parse(response)
  end
end
