stock_array = [17, 3, 6, 9, 15, 8, 6, 1, 10]
stock_array1 = [10, 9, 8, 7]
stock_array2 = [17]
stock_array3 = [5, 10, 5, 6]

def stock_picker(day_price)
  min_max = []
  min_value = day_price[0]
  min_day = 0
  max_profit = 0

  day_price.each_with_index do |value, index|
    profit = value - min_value

    if profit > max_profit
      max_profit = profit
      min_max = [min_day, index]
    end

    if value < min_value
      min_value = value
      min_day = index
    end
  end

  min_max
end

puts stock_picker(stock_array)
puts stock_picker(stock_array1)
puts stock_picker(stock_array2)
puts stock_picker(stock_array3)

# ChatGipities
# def stock_picker(prices)
#   min_price, min_day = prices[0], 0
#   max_profit, best_days = 0, []
#
#   prices.each_with_index do |price, day|
#     max_profit, best_days = price - min_price, [min_day, day] if price - min_price > max_profit
#     min_price, min_day = price, day if price < min_price
#   end
#
#   best_days
# end
