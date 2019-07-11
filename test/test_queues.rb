require 'minitest/autorun'
require 'test_helper'
require 'architect/events'

class ArcQueuesTest < Minitest::Test

  def test_queues_publish_without_payload
    assert_raises ArgumentError do
      Arc::Queues.publish name: 'buzz'
    end
  end

  def test_queue
    Arc::Queues.publish name: 'continuum', payload: {ok: true}
    assert true
  end
# eof
end
