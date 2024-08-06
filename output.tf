output "spotify_url"{
    value ="https://open.spotify.com/playlist/${spotify_playlist.playlist.id}"
    description = "Created the url to get the created playlist"
}