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

    @new_song = Song.new("Highway To Hell")

    @room_playlist = [@song1, @song2, @song3, @song4]

    @guest1 = Guest.new("Angus", 25)
    @guest2 = Guest.new("Paul", 50)
    @guest3 = Guest.new("Bob", 100)
    @guest4 = Guest.new("Bruce", 8)


    @Room1 = Room.new("Dylan", @room_playlist, 0, 10, 25)
    @Room2 = Room.new("AC/DC", @room_playlist, 0, 8, 25)
    @Room3 = Room.new("Free", @room_playlist, 0, 2, 25)
    @Room4 = Room.new("Springsteen", @room_playlist, 0, 10, 25)




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
    @Room1.add_to_guests(@guest1)
    @Room1.add_to_guests(@guest2)
    @Room1.remove_guest_from_room(@guest1)
     assert_equal(1, @Room1.guest_count.length())

    end
#
    def test_add_new_song_to_room()
      @Room2.add_song_to_room(@new_song)
      assert_equal(5, @Room2.playlist.count)
    end

    def test_add_guests_no_room()
        @Room3.add_to_guests(@guest1)
        @Room3.add_to_guests(@guest2)
        @Room3.add_to_guests(@guest3)
        assert_equal(2, @Room3.guest_count.length())


      end

      def test_entry_fee_to_room_enough_money()
        @Room2.entry_fee_to_room(@guest4)
        assert_equal(25, @Room2.entry_fee)


      end
      def test_entry_fee_to_room_not_enough_money()
        @Room2.entry_fee_to_room(@guest3)
        assert_equal(25, @Room2.entry_fee)

end
end
