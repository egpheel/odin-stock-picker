prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_prices(prices_array = [])
  best_profit = 0
  best_profit_days = []
  lowest_price = -1
  best_buy_index = 0
  best_sell_index = 0
  min_sell_index = 0

  prices_array.each_with_index do |price, index|
    if price < lowest_price || lowest_price == -1
      lowest_price = price
      min_sell_index = index
    end

    profit = price - lowest_price

    next unless profit > best_profit

    best_profit = profit
    best_sell_index = index
    best_buy_index = min_sell_index
  end

  best_profit_days = [best_buy_index, best_sell_index]
  p best_profit_days
end

stock_prices(prices)
