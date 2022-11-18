class MusicTracker
  def initialize #takes no arguments
    @music_list = [] #an array of hash objects
  end

  def add(title, artist)
    if title.empty?
      fail "Error: Title cannot be empty string."
    end
    if artist.empty?
      fail "Error: Artist cannot be empty string."
    end
    track = {}
    track["Title"] = title
    track["Artist"] = artist
    @music_list << track
    #title is a string
    #artist is a string
    #title and artist are values within a hash
  end

  def list_tracks() #takes no arguments
    return @music_list
  end
end
