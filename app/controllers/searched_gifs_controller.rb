class SearchedGifsController < ApplicationController
  def show
    require "http"
    
    limit = 5
    keyword_inputs = params[:keywords]
    search_words = keyword_inputs.gsub(" ", "+")

    response = HTTP.get("http://api.giphy.com/v1/gifs/search?q=#{search_words}&api_key=#{Rails.application.credentials.giphy_api_key}&limit=#{limit}")
    buffer = response.body
    parsed_response = JSON.parse(buffer)
    render json: parsed_response
  end
end
