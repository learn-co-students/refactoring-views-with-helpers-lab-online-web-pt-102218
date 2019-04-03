class Song < ActiveRecord::Base
  belongs_to :artist

  def artist_name
    self.artist.name
  end

  def artist_name=(params)
    if Artist.find_by(:name => params)
      self.artist = Artist.find_by(:name => params)
    else
      self.artist = Artist.create(:name => params)
    end
  end
end
