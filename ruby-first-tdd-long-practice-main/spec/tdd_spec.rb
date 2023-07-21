require_relative "../lib/tdd.rb"

describe "#my_uniq"
    it "removes duplicate elements from the array" do
        expect([1,2,1,3,3].my_uniq).to eq([1,2,3])
    end

    it "returns the unique elements in the order in which they appear" do
        expect([3,1,1,2].my_uniq).to eq([3,1,2])
    end
end