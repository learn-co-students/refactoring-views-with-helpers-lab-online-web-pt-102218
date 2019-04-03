module SongsHelper

    def last_updated(post)
        post.updated_at.strftime("Last updated %A, %b %e, at %l:%M %p")
    end

    def display_artist(song)
        if song.artist
            link_to song.artist_name, artist_path(song.artist)
        else
            link_to "Add Artist", edit_song_path(song)
        end
    end
end
