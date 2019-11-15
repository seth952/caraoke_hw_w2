require('minitest/autorun')
require('minitest/reporters')
require_relative("../guest.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestGuest < Minitest::Test


  def setup()
    @guest = Guest.new("Guest1")

  end
  def test_has_name
    assert_equal("Guest1", @guest.name)
  end


end
