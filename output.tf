output "spotify_url"{
    value ="https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
    description = "url to play the songs"
}