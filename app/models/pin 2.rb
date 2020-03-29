class Pin < ApplicationRecord
  def self.random_pin(board)
    pins = Pin.where("board = ?", board)
    return pins.sample
  end
end
