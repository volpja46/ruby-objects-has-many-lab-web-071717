class Post

attr_accessor :author, :title

def initialize (title)
  @title = title

end

def author_name
  if author
    self.author.name # if it know its name return
  else
    nil  #doesnt know name its nil
    end
  end
end


#author_name
  # knows the name of its author
  # returns nil if the post does not have an author
