class PagesController < ApplicationController
  def home
    boards_array = ["Interior Design", "Patterns & Textures", "Heroes", "Libraries", "Coffee Shops", "Travel", "Art", "Plants"]
    @pins = {}
    boards_array.each do |board|
      @pins[board] = Pin.random_pin(board)
    end

    @quotes = []
    @quotes.push(Quote.random_quote('short'))
    @quotes.push(Quote.random_quote('short'))
    @quotes.push(Quote.random_quote('long'))
  end

  def about
  end

  def portfolio
  end

  def contact
  end
end
