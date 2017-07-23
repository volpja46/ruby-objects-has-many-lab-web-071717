class Artist

attr_accessor :name

@@song_count = 0

def initialize (name)
  @name = name
  @songs = []
end

  def songs #has many songs
     @songs
   end

def add_song(song)
  @songs << song
  song.artist = self
   @@song_count += 1
end


def add_song_by_name(song_name)
      song = Song.new(song_name) #creates a new song with new song_name arg
       @songs << song    #pushes song into songs array
       song.artist = self    ##  and associates the song and artist
       @@song_count += 1  ## increments song counter
  end

  def self.song_count # CLASS METHOD NEED SELF IN DEF
    @@song_count # the total number of songs associated to all existing artists
  end
  

end
