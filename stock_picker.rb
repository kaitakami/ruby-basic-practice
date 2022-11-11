def stock_picker (stock_prices)
  max_profit = 0
  buy_day = 0
  sell_day = 0
  stock_prices.each_with_index do |day, buy_index|
    actual_profit = 0

    for sell_index in (buy_index + 1)...stock_prices.length do
      actual_profit = stock_prices[sell_index] - stock_prices[buy_index]
      if actual_profit > max_profit
        max_profit = actual_profit
        buy_day = buy_index
        sell_day = sell_index
      end
    end
  end
  if sell_day == 0
    puts "It's better to not buy in this bear market 😥"
  end
  [buy_day, sell_day]
end

p stock_picker([9,8,7,6,5,3,2,1,10])
