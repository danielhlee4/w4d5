def my_uniq(arr)
    new_arr = []
    arr.each do |el|
        if !new_arr.include?(el)
            new_arr << el
        end
    end
    new_arr
end

class Array
    def two_sum
        pairs_arr = []

        (0...self.length).each do |i|
            (0...self.length).each do |j|
                pairs_arr << [i,j] if j > i && self[i] + self[j] == 0
            end
        end
        pairs_arr
    end
end