require('minitest/autorun')
require('minitest/reporters')
require_relative("../song.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestSong < Minitest::Test


  def setup()
    @song = Song.new("Song1")

  end
  def test_has_name
    assert_equal("Song1", @song.name)
  end


end
