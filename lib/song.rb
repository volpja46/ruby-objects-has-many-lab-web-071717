class Song

  attr_accessor :name, :artist #<< "belongs to an artist"

  def initialize (name)
    @name = name
end

def artist_name
  if artist
    self.artist.name ## knows the name of its artist TRUE- knows the artist
  else # if the song does not have an artist-> nil
    nil
    end
  end
end
