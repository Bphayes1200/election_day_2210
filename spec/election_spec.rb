require './lib/candidate'
require './lib/race'
require './lib/election'

RSpec.describe Election do 
  describe "#initialize" do 
    it 'will instantiate class Election' do 
      election = Election.new('2022')

      expect(election).to be_a(Election)
    end 

    it 'will have a year' do 
      election = Election.new('2022')

      expect(election.year).to eq('2022')
    end 

  end 
end 