class Room
  attr_reader :name, :playlist, :capacity, :guest_count, :entry_fee


  def initialize(name, playlist, guest_count, capacity, entry_fee)
    @name = name
    @playlist = playlist
    @guest_count = []
    @capacity = capacity
    @entry_fee = entry_fee

end

def find_song(song_name)
 return @playlist.find { |song| song.name == song_name}

end


def add_to_guests(guest)
   if @guest_count.length < @capacity
     @guest_count << (guest)

   else
     p "Sorry mate, no room at the Inn"

   end
 end

 def remove_guest_from_room(guest)
   @guest_count.delete(guest)

 end

 def add_song_to_room(song)
    return @playlist.push(song)
  end

  def add_guests_no_room(guest)
    if @guest_count.length < @capacity
      @guest_count << (guest)

    else
      p "Sorry mate, no room at the Inn"

    end
  end

  def entry_fee_to_room(guest)
    if guest.wallet >= entry_fee
      p "Welcome to the room"
    else
      p "Sorry you do not have enough money"
  end
end
end
