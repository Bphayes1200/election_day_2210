require './lib/candidate'
require './lib/race'

RSpec.describe Race do 
  describe "initialize" do 
    it 'will instantiate class Race' do 
      race = Race.new("Texas Governor")

      expect(race).to be_a(Race)
    end 

    it 'will have an office' do 
      race = Race.new("Texas Governor")

      expect(race.office).to eq("Texas Governor")
    end 

    it 'will have candidates' do 
      race = Race.new("Texas Governor")

      expect(race.candidates).to eq([])
    end 
  end 

  describe "#registar candidates" do 
    it 'will register candidates into the race' do 
      race = Race.new("Texas Governor")
      candidate1 = race.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race.register_candidate!({name: "Roberto R", party: :republican})
      # require 'pry'; binding.pry
      expect(race.candidates).to eq([candidate1, candidate2])
    end 
  end 
end 