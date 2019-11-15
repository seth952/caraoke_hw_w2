require('minitest/autorun')
require('minitest/reporters')
require_relative("../room.rb")
require_relative("../song.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < Minitest::Test


  def setup()

    @song1 = Song.new("Back in Black")
    @song2 = Song.new("Highway to Hell")
    @song3 = Song.new("Puppy Eyes")
    @song4 = Song.new("Born In The USA")

    @room_playlist = [@song1, @song2, @song3, @song4]


    @Room1 = Room.new("Dylan", @room_playlist)
    @Room2 = Room.new("AC/DC", @room_playlist)
    @Room3 = Room.new("Free", @room_playlist)
    @Room4 = Room.new("Springsteen", @room_playlist)




  end
  def test_has_name
    assert_equal("Dylan", @Room1.name)
  end

  def test_has_song
    assert_equal("Back in Black", @Room1.find_song("Back in Black").name)
  end


end
