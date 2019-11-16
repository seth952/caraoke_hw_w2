class Room
  attr_reader :name, :playlist, :capacity, :guest_count


  def initialize(name, playlist, guest_count, capacity)
    @name = name
    @playlist = playlist
    @guest_count = []
    @capacity = capacity

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


end
