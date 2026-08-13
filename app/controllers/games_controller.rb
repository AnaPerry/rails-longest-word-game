class GamesController < ApplicationController
  def new
    @letters = ("A".."Z").to_a.sample(10).join
  end
  def score
    raise

    require "json"
    require "open-uri"

    url = "https://dictionary.lewagon.com/:word"
    user_serialized = URI.parse(url).read
    user = JSON.parse(user_serialized)

    puts "#{user["name"]} - #{user["bio"]}"
  end
end
