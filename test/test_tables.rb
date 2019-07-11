require 'minitest/autorun'
require 'test_helper'
require 'architect/events'

class ArcTablesTest < Minitest::Test
  def test_tables
    noises = Arc::Tables.name('noises')
    puts noises
    assert noises.start_with? ENV['ARC_CLOUDFORMATION']
  end
end
