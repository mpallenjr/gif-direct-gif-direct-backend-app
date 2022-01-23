class TrendingGifsController < ApplicationController
  def index
    require "http"
    response = HTTP.get("https://api.giphy.com/v1/gifs/trending?api_key=#{Rails.application.credentials.giphy_api_key}&limit=25&rating=g")
    buffer = response.body
    parsedResponse = JSON.parse(buffer)
    render json: parsedResponse
  end
end
