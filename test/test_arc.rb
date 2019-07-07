require 'minitest/autorun'
require 'test_helper'
require 'architect/functions'

class ArcTest < Minitest::Test

  def test_events_interface
    assert Arc::Events.respond_to? :publish 
  end

  def test_http_interface
    assert Arc::HTTP::Session.respond_to? :read
    assert Arc::HTTP::Session.respond_to? :write
  end

  def test_queues_interface
    assert Arc::Queues.respond_to? :publish 
  end

  def test_ws_interface
    assert Arc::WS.respond_to? :send
  end

  def test_tables_interface
    assert Arc::Tables.respond_to? :name
  end

  def test_reflect
    assert Arc.respond_to? :reflect
  end

  def test_reflect_output
    arc = Arc.reflect
    assert arc.key?('events')
  end
end
