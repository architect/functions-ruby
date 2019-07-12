require 'minitest/autorun'
require 'test_helper'
require 'architect/events'

class ArcTablesTest < Minitest::Test
  def test_tables
    noises = Arc::Tables.name table: 'noises' 
    tbl = Arc::Tables.table table: 'noises'
    puts noises
    puts tbl
    assert noises.start_with? ENV['ARC_CLOUDFORMATION']
  end
end
