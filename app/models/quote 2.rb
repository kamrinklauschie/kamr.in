class Quote < ApplicationRecord
  def self.random_quote(type)
    quotes = Quote.where("quote_type = ?", type)
    return quotes.sample
  end
end
