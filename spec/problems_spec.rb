require "rspec"
require "problems.rb"

describe Array do
    describe "#my_uniq" do
        it "should return uniq ele in order" do
            my_u=[1, 2, 1, 3, 3].my_uniq 
            u=[1, 2, 1, 3, 3].uniq
            expect(my_u).to eq(u)
        end
    end

    describe "#two_sum" do
        it "found no sum zeros" do
            my_arr = [1]
            expect(my_arr.two_sum).to eq([])
        end

        it "finds any elements that sum to zero" do
            my_arr = [-2, 2]
            expect(my_arr.two_sum).to eq([[0, 1]])
        end

        it "sorts pairs smaller_idx to bigger_idx" do
            my_arr = [-2, 2].two_sum
            expect(my_arr[0][0]).to eq(0)
        end

        it "array pairs are sorted dictionary-wise" do
            my_arr = [-2, 2, 5, 0, 0].two_sum
            expect(my_arr[0][0]).to eq(0)
            expect(my_arr[1][0]).to eq(3)
        end        
    end

    describe "#my_transpose" do 
        it "should return self for matrix of size 1 by 1" do
            expect([[1]].my_transpose).to eq([[1]])
        end
        it "should convert between row/col orientations" do
            my_matrix=[[1, 2], [3, 4]]
            expect(my_matrix.my_transpose).to eq([[1, 3], [2, 4]])
        end
    end

    describe "#stock_picker" do
        it "should return indices of optimal buy/sell days" do
            stock_arr = [21, 36]
            expect(stock_arr.stock_picker).to eq([0, 1])
        end
    end
end

# 68 - 25 > 0
# 0 > 25 - 68

# 0. 68 b
# 1. 25 s
# 2. 30 
# 3. 15 # Low
# 4. 17
# 5. 33
# 6. 120 # High
# 7. 65
# 8. 40

# the_best_time_to_buy_sell_tracker = 0
# the_best_time_to_buy_sell_tracker = (D1 - D0) if (D1 - D0) > the_best_time_to_buy_sell_tracker)