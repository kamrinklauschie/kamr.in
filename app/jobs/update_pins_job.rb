require 'open-uri'

class UpdatePinsJob < ApplicationJob
  queue_as :default

  def fetch_pinterest_api(board)
    pinterest_api = "https://api.pinterest.com/v1/boards/kamrinklauschie/#{board}/pins/?access_token=#{ENV['PINTEREST_API_KEY']}&limit=100&fields=url%2Cboard%2Ccolor%2Cimage"

    pin_json = open(pinterest_api).read
    pin_info = JSON.parse(pin_json)
    pin_array = pin_info["data"]
    pin_array.each do |pin|
      Pin.create!(
        pin_url: pin["url"],
        board: pin["board"]["name"],
        color: pin["color"],
        img_url: pin["image"]["original"]["url"],
        width: pin["image"]["original"]["width"],
        height: pin["image"]["original"]["height"]
      )
    end
  end

  def perform
    boards_array = ["interior-design", "patterns-textures", "heroes", "libraries", "coffee-shops"]

     # "travel", "art", "plants"

    boards_array.each do |board|
      fetch_pinterest_api(board)
    end
  end
end
