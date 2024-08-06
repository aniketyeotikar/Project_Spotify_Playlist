terraform {
  required_providers {
    spotify = {
      source = "conradludgate/spotify"
      version = "0.2.7"
    }
  }
}

provider "spotify"{
    api_key = var.spotify_api_key
}

data "spotify_search_track" "by_artist_arijit"{
    artist = "Arijit Singh"
}

data "spotify_search_track" "by_artist_abhijeet"{
    artist = "Abhijeet"
}

data "spotify_search_track" "by_artist_kk"{
    artist = "KK"
}


resource "spotify_playlist" "playlist"{
    name = "Driving"
    description = "playlist created by terraform"
    public = true

    tracks = [
        data.spotify_search_track.by_artist_arijit.tracks[0].id,
        data.spotify_search_track.by_artist_arijit.tracks[1].id,
        data.spotify_search_track.by_artist_arijit.tracks[5].id,
        data.spotify_search_track.by_artist_arijit.tracks[6].id,
        data.spotify_search_track.by_artist_arijit.tracks[7].id,
        data.spotify_search_track.by_artist_kk.tracks[0].id,
        data.spotify_search_track.by_artist_kk.tracks[1].id,
        data.spotify_search_track.by_artist_kk.tracks[2].id,
        data.spotify_search_track.by_artist_kk.tracks[3].id,
        data.spotify_search_track.by_artist_kk.tracks[6].id,
        data.spotify_search_track.by_artist_abhijeet.tracks[0].id,
        data.spotify_search_track.by_artist_abhijeet.tracks[1].id,
        data.spotify_search_track.by_artist_abhijeet.tracks[3].id,
        data.spotify_search_track.by_artist_abhijeet.tracks[7].id,
        data.spotify_search_track.by_artist_abhijeet.tracks[8].id,
    ]
}
