require 'minitest/autorun'
require 'jwe'
require 'test_helper'
require 'architect/events'

class ArcHttpTest < Minitest::Test

  def test_session_read_invalid_session
    assert_raises JWE::DecodeError do
      mock = {headers:{'cookie':'_idx=foo;'}}
      Arc::HTTP::Session.read(mock) 
    end
  end

  def test_session_write_read
    cookie = Arc::HTTP::Session.write({count:0}) 
    mock = {headers:{'cookie':cookie}}
    session = Arc::HTTP::Session.read(mock)
    assert session['count'] === 0
  end

end
