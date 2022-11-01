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
  end 
end 