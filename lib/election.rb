class Election
  attr_reader :year, :races

  def initialize(year)
    @year = year
    @races = []
  end 

  def add_race(race)
    @races << race
  end 

  def vote_counts
    vote_counts = {}
    @races.each do |race|
      race.candidates.each do |candidate|
        reciever_name = candidate.name
        vote_count = candidate.votes
        vote_counts[reciever_name] = vote_count
      end 
    end 
    vote_counts
  end 

end
