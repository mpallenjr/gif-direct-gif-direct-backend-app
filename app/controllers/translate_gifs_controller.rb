class TranslateGifsController < ApplicationController
  def show
    require "http"
    translate_input = params[:translate]
    translate_words = translate_input.gsub(" ", "+")

    response = HTTP.get("https://api.giphy.com/v1/gifs/translate?api_key=#{Rails.application.credentials.giphy_api_key}&s=#{translate_words}")
    buffer = response.body
    parsed_response = JSON.parse(buffer)
    render json: parsed_response
  end
end

