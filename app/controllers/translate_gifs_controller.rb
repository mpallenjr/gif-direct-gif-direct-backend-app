class TranslateGifsController < ApplicationController
  def show
    require "http"
    response = HTTP.get("https://api.giphy.com/v1/gifs/translate?api_key=#{Rails.application.credentials.giphy_api_key}&s=cars")
    buffer = response.body
    parsedResponse = JSON.parse(buffer)
    render json: parsedResponse
  end
end

