require_relative 'brackets/ncaa2018'
require_relative 'oracle'

champion = Ncaa2018::FINAL_FOUR.winner

puts "#{champion} is the champion!"