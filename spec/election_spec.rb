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

    it 'will have races' do 
      election = Election.new('2022')

      expect(election.races).to eq([])
    end
  end 

  describe '#add_race' do 
    it 'will add a race to the election' do 
      election = Election.new('2022')
      race1 = Race.new("Virginia District 4 Representative")
      race2 = Race.new("Texas Governor")
      election.add_race(race1)
      election.add_race(race2)

      expect(election.races).to eq([race1, race2])
    end 

    it 'will count the votes for each candidate' do 
      election = Election.new('2022')
      race1 = Race.new("Virginia District 4 Representative")
      race2 = Race.new("Texas Governor")
      election.add_race(race1)
      election.add_race(race2)
      candidate1 = race1.register_candidate!({name: "Diana D", party: :democrat})
      candidate2 = race1.register_candidate!({name: "Roberto R", party: :republican})
      candidate3 = race2.register_candidate!({name: "Diego D", party: :democrat})
      candidate4 = race2.register_candidate!({name: "Rita R", party: :republican})
      candidate5 = race2.register_candidate!({name: "Ida I", party: :independent})
      # require 'pry'; binding.pry
      4.times {candidate1.vote_for!}
      1.times {candidate2.vote_for!}
      10.times {candidate3.vote_for!}
      6.times {candidate4.vote_for!}
      6.times {candidate5.vote_for!}
      # require 'pry'; binding.pry
      expect(election.vote_counts).to eq({"Diana D"=>4, "Roberto R"=>1, "Diego D"=>10, "Rita R"=>6, "Ida I"=>6})
    end 
  end 
end 