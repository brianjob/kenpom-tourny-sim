require_relative 'oracle'

class Matchup
  attr_reader :team_a, :team_b

  def initialize(team_a, team_b)
    @team_a = team_a
    @team_b = team_b
    @oracle = Oracle.new
    @random = Random.new
  end

  def winner
    a = resolve_if_playin @team_a
    b = resolve_if_playin @team_b
    p = @oracle.probability a, b
    roll = @random.rand
    if p > roll
      puts "Roll: #{format('%.3f', roll)}...\t#{a} beats #{b}"
      a
    else
      puts "Roll: #{format('%.3f', roll)}...\t#{b} beats #{a}"
      b
    end
  end

  private

  def resolve_if_playin(team)
    team.is_a?(Matchup) ? team.winner : team
  end
end