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

    it 'will have votes' do
      diana = Candidate.new({name: "Diana D", party: :democrat})

      expect(diana.votes).to eq(0)
    end 
  end 

  describe "#vote_for!" do 
    it 'will add votes for a candidate' do 
      diana = Candidate.new({name: "Diana D", party: :democrat})
      diana.vote_for!

      expect(diana.votes).to eq(1)

      diana.vote_for!

      expect(diana.votes).to eq(2)

      diana.vote_for!
      diana.vote_for!
      
      expect(diana.votes).to eq(4)
    end 
  end 
end