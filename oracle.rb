require 'net/http'
require 'nokogiri'

class Oracle
  BASE = 'https://gamepredict.us/teams/matchup_bracket'.freeze

  def probability(team_a, team_b)
    params = {
      team_a: team_a,
      team_b: team_b,
      neutral: true
    }
    query_string = params.keys.map { |a| "#{a}=#{params[a]}" }.join('&')
    response = Net::HTTP.get URI("#{BASE}?#{query_string}")
    html = Nokogiri::HTML(response)
    html.css('.bracket-probability').text.chomp('%').to_f / 100.0
  end
end