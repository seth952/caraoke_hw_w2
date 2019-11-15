class Room
  attr_reader :name


  def initialize(name, playlist)
    @name = name
    @playlist = playlist

end

def find_song(song_name)
 return @playlist.find { |song| song.name == song_name}

end

end
