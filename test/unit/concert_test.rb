require 'test_helper'

class ConcertTest < ActiveSupport::TestCase
  def test_should_be_valid
    assert Concert.new.valid?
  end
end
