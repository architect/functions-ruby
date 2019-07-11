require 'minitest/autorun'
require 'test_helper'
require 'architect/events'

class ArcEventsTest < Minitest::Test

  def test_events_interface_standalone
    assert Arc::Events.respond_to? :publish 
  end

  def test_event_publish_without_payload
    assert_raises ArgumentError do
      Arc::Events.publish name: 'buzz'
    end
  end

  def test_event
    Arc::Events.publish name: 'ping', payload: {:ok=> true}
    assert true
  end
# eof
end
