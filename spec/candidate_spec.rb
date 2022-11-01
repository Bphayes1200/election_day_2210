require './candidate'

RSpec.describe Candidate do
  describe "Initialize" do 
    it "will instantiate class Candidate" do 
      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana).to be_a(Candidate)
    end 
  end 
end