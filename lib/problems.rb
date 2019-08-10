require 'byebug'

class Array

    def my_uniq
        new_arr = []
        each { |el| new_arr << el unless new_arr.include?(el) }
        new_arr
    end

    def two_sum
        sum_zero_arr = []
        each_with_index do |num1, idx1|
            each_with_index do |num2, idx2|
                sum_zero_arr << [idx1, idx2] if (self[idx1] + self[idx2] == 0) && (idx1 < idx2)
            end
        end
        sum_zero_arr
    end

    def my_transpose
        deep = []
        length.times do |i|
            deep << [] 
            length.times do |j|
                deep[i] << self[j][i]
            end
        end
        deep
    end

    def stock_picker
        best_sell_buy_day = 0
        # most_profitable_days = []
        
        each_with_index do |spot1, idx1|
            each_with_index do |spot2, idx2|
                buy_sell = idx1 < idx2
                profit = self[idx2] - self[idx1]
                profit_and_glast = profit > best_sell_buy_day
                if buy_sell && profit_and_glast
                    best_sell_buy_day = self[idx1] - self[idx2]
                    most_profitable_days = [idx1, idx2]
                end
            end
        end

        most_profitable_days
    end

end