class Author

attr_accessor :name

@@post_count = 0
def initialize (name)
  @name = name
  @posts = []
end

def posts
  @posts
end


def add_post(post)
  @posts << post
  post.author = self
   @@post_count += 1
end


def add_post_by_title(title)
       post = Post.new(title) #creates a new post with new title arg
       @posts << post    #pushes post into songs array
       post.author = self    ##  and associates the song and artist
       @@post_count += 1  ## increments post counter
  end

  def self.post_count # CLASS METHOD NEED SELF IN DEF
    @@post_count # the total number of songs associated to all existing artists
  end

end
