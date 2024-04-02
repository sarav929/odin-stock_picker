stock_prices = [17, 3, 6, 9, 15, 8, 6, 1, 10]

def stock_picker(array)
  result = []
  buy_price = 0
  sell_price = 0
  buy_day = 0
  sell_day = 0 
  array.each_with_index do |b, b_index|
    array.each_with_index do |s, s_index|
      if s_index <= b_index 
        next
      end
      if s - b > sell_price - buy_price 
        buy_price = b
        buy_day = b_index
        
        sell_price = s
        sell_day = s_index
        
      end
    end
  end
  result.push(buy_day)
  result.push(sell_day)
  result
end


p stock_picker(stock_prices)
