require_relative 'reflect'

module Arc
  module Tables
    ## 
    # returns the physicalID for the given table name
    #
    def self.name(table)
      arc = Arc.reflect
      arc['tables'][table]
    end
  end
end
