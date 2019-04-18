module ArtistsHelper

    def display_artist(song)
        
        if song.artist
            link_to(song.artist.name, artist_path(song.artist))
        else 
            link_to(song.name, edit_artist(song))
        end
    end
end
