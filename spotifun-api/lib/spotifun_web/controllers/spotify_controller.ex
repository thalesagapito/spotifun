defmodule SpotifunWeb.SpotifyController do
  use SpotifunWeb, :controller

  alias Spotifun.Integrations.Spotify

  def get_favorite_artists(conn, _params = %{"access_token" => token}) do
    json(conn, %{
      artists: Spotify.get_favorite_artists(token)
    })
  end

  def get_login_url(conn, %{"callback_url" => callback_url}) do
    json(conn, %{
      uri: get_login_url(callback_url)
    })
  end

  defp get_login_url(callback_url) do
    client_id = Application.get_env(:spotify_ex, :client_id)
    "https://accounts.integrations.com/authorize?client_id=#{client_id}&redirect_uri=#{callback_url}&scope=user-read-private%20user-read-email&response_type=token&state=123"
  end
end
