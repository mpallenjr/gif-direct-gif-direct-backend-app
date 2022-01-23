class SearchedGifsController < ApplicationController
  def show
    require "http"
    response = HTTP.get("http://api.giphy.com/v1/gifs/search?q=ryan+gosling&api_key=#{Rails.application.credentials.giphy_api_key}&limit=5")
    parsedResponse = JSON.parse(response)
    render json: parsedResponse
  end
end