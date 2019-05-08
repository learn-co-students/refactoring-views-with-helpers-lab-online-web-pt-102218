class Song < ActiveRecord::Base
  belongs_to :artist

  #def artist_name
    #@artist_name
  #end

  def artist_name=(name)
    #binding.pry
    if @artist = Artist.find_by(name: name)
      self.artist = @artist
      #@artist_name = @artist.name
    else  
      @artist = self.create_artist(name: name)
      #self.artist = @artist
      #@artist_name = @artist.name
      #binding.pry
    end
    #binding.pry
    #@artist = Artist.create!(name: "Daft Punk")
    #@grid = @artist.songs.create!(title: "The Grid")
  end

  def artist_name 
    self.artist.name
  end

end
