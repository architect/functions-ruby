require 'aws-sdk-dynamodb'

require_relative 'reflect'

module Arc
  module Tables
    ## 
    # returns the physicalID for the given table name
    #
    def self.name(tablename)
      if ENV['NODE_ENV'] == 'testing'
        tmp = "staging-#{tablename}"
        db = Aws::DynamoDB::Resource.new :endpoint=> 'http://localhost:5000'
        tbl = db.tables().detect {|e| e.name.include?(tmp)}
        tbl.name
      else
        arc = Arc.reflect
        arc['tables'][tablename]
      end
    end
  end
end
