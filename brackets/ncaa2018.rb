require_relative '../teams'
require_relative '../matchup'

module Ncaa2018
  include Teams

  SOUTH = Matchup.new(
    Matchup.new(
      Matchup.new(
        Matchup.new(VIRGINIA, UMBC),
        Matchup.new(CREIGHTON, KANSAS_ST)
      ),
      Matchup.new(
        Matchup.new(KENTUCKY, DAVIDSON),
        Matchup.new(ARIZONA, BUFFALO)
      )
    ),
    Matchup.new(
      Matchup.new(
        Matchup.new(MIAMI_FL, LOYOLA_CHICAGO),
        Matchup.new(TENNESSEE, WRIGHT_ST)
      ),
      Matchup.new(
        Matchup.new(NEVADA, TEXAS),
        Matchup.new(CINCINNATI, GEORGIA_ST)
      )
    )
  ).freeze

  WEST = Matchup.new(
    Matchup.new(
      Matchup.new(
        Matchup.new(XAVIER, TEXAS_SOUTHERN),
        Matchup.new(MISSOURI, FLORIDA_ST)
      ),
      Matchup.new(
        Matchup.new(OHIO_ST, SOUTH_DAKOTA_ST),
        Matchup.new(GONZAGA, UNC_GREENSBORO)
      )
    ),
    Matchup.new(
      Matchup.new(
        Matchup.new(HOUSTON, SAN_DIEGO_ST),
        Matchup.new(MICHIGAN, MONTANA)
      ),
      Matchup.new(
        Matchup.new(TEXAS_A_M, PROVIDENCE),
        Matchup.new(NORTH_CAROLINA, LIPSCOMB)
      )
    )
  ).freeze

  EAST = Matchup.new(
    Matchup.new(
      Matchup.new(
        Matchup.new(VILLANOVA, RADFORD),
        Matchup.new(VIRGINIA_TECH, ALABAMA)
      ),
      Matchup.new(
        Matchup.new(WEST_VIRGINIA, MURRAY_ST),
        Matchup.new(WICHITA_ST, MARSHALL)
      )
    ),
    Matchup.new(
      Matchup.new(
        Matchup.new(FLORIDA, ST_BONAVENTURE),
        Matchup.new(TEXAS_TECH, STEPHEN_F_AUSTIN)
      ),
      Matchup.new(
        Matchup.new(ARKANSAS, BUTLER),
        Matchup.new(PURDUE, CAL_ST_FULLERTON)
      )
    )
  ).freeze

  MIDWEST = Matchup.new(
    Matchup.new(
      Matchup.new(
        Matchup.new(KANSAS, PENN),
        Matchup.new(SETON_HALL, NORTH_CAROLINA_ST)
      ),
      Matchup.new(
        Matchup.new(CLEMSON, NEW_MEXICO_ST),
        Matchup.new(AUBURN, COLLEGE_OF_CHARLESTON)
      )
    ),
    Matchup.new(
      Matchup.new(
        Matchup.new(TCU, Matchup.new(ARIZONA_ST, SYRACUSE)),
        Matchup.new(MICHIGAN_ST, BUCKNELL)
      ),
      Matchup.new(
        Matchup.new(RHODE_ISLAND, OKLAHOMA),
        Matchup.new(DUKE, IONA)
      )
    )
  ).freeze

  FINAL_FOUR = Matchup.new(
    Matchup.new(SOUTH, WEST),
    Matchup.new(EAST, MIDWEST)
  ).freeze
end
