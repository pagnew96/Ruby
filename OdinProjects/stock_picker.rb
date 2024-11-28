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

puts stock_picker(stock_array).inspect
puts stock_picker(stock_array1).inspect
puts stock_picker(stock_array2).inspect
puts stock_picker(stock_array3).inspect

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
#
# From anoter user with edge case additions
# def stock_picker(prices)
#   best_pair = prices.each_with_index
#                     .to_a
#                     .combination(2)
#                     .max_by { |buy, sell| sell[0] - buy[0] }
#
#   # Ensure the max profit is greater than 0; otherwise, return an empty array
#   return [] if best_pair.nil? || best_pair[1][0] - best_pair[0][0] <= 0
#
#   best_pair.map { |price, i| i }
# end
#
# input = [10, 9, 8, 7]
# puts stock_picker(input).inspect # => []
