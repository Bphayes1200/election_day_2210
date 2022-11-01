require './candidate'

RSpec.describe Candidate do
  describe "Initialize" do 
    it "will instantiate class Candidate" do 
      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana).to be_a(Candidate)
    end 

    it 'will have a name' do 
      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.name).to eq("Diana D")
    end 
    
    it 'will have a party' do 
      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.party).to eq(:democrat)
    end 
  end 
end