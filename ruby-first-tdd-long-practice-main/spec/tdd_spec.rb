require_relative "../lib/tdd.rb"

describe "#my_uniq" do
    it "removes duplicate elements from the array" do
        expect(my_uniq([1,2,1,3,3])).to eq([1,2,3])
    end

    it "returns the unique elements in the order in which they appear" do
        expect(my_uniq([3,1,1,2])).to eq([3,1,2])
    end

    context "when an empty array is passed in" do
        it "returns an empty array" do
            expect(my_uniq([])).to eq([])
        end
    end
end


#case: returns empty array if no pairs sum to zero
#case: returns all pairs of indices that sum to zero
#case: returns pairs in "dictionary-wise" order
# does not return a pair of the same indices ex:[0,0]
describe Array do
    describe "#two_sum" do
        it "returns empty array if no pairs sum to zero" do
            expect([-1, 0, 7, 2, -4].two_sum).to eq([])
        end

        it "returns all pairs of indices whose elements sum to zero" do
            expect([-1, 0, 2, -2, 1].two_sum).to eq([[0, 4], [2, 3]])
        end

        it "returns pairs in least-to-greatest order by first index of each pair" do 
            expect([-1, -2, -3, 2, 2, 1].two_sum).to eq([[0,5], [1,4], [1,5]])
        end
    end
end