require('minitest/autorun')
require('minitest/reporters')
require_relative("../room.rb")
require_relative("../song.rb")
require_relative("../guest.rb")


Minitest::Reporters.use! Minitest::Reporters::SpecReporter.new

class TestRoom < Minitest::Test


  def setup()

    @song1 = Song.new("Back in Black")
    @song2 = Song.new("Alright Now")
    @song3 = Song.new("Hurracaine")
    @song4 = Song.new("Born In The USA")

    @room_playlist = [@song1, @song2, @song3, @song4]

    @guest1 = Guest.new("Angus")
    @guest2 = Guest.new("Paul")
    @guest3 = Guest.new("Bob")
    @guest4 = Guest.new("Bruce")


    @Room1 = Room.new("Dylan", @room_playlist, 0, 10)
    @Room2 = Room.new("AC/DC", @room_playlist, 0, 10)
    @Room3 = Room.new("Free", @room_playlist, 0, 10)
    @Room4 = Room.new("Springsteen", @room_playlist, 0, 10)




  end

  def test_has_name
    assert_equal("Dylan", @Room1.name)
  end

  def test_has_song
    assert_equal("Back in Black", @Room1.find_song("Back in Black").name)
  end

  # def test_get_initial_room_count()
	# 	assert_equal(0, @Room4.guest_count)
	# end

  def test_add_guests()
      @Room1.add_to_guests(@guest1)
      @Room1.add_to_guests(@guest2)
      assert_equal(2, @Room1.guest_count.length())


  	end

    def test_remove_guest_from_room()
    @Room1.remove_guest_from_room(@guest1)
     assert_equal(1, @guest_count.count())

    end
#
    def test_add_new_song_to_room()
      actual = @Room2.add_song_to_room("Highway To Hell")
      assert_equal("Highway To Hell", actual)
    end
end
