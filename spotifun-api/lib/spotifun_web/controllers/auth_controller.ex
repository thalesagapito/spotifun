defmodule SpotifunWeb.AuthController do
  use SpotifunWeb, :controller

  def get_spotify_login_url(conn, %{"callback_url" => callback_url}) do
    json(conn, %{
      uri: get_spotify_login_url(callback_url)
    })
  end

  defp get_spotify_login_url(callback_url) do
    client_id = Application.get_env(:spotify_ex, :client_id)
    "https://accounts.spotify.com/authorize?client_id=#{client_id}&redirect_uri=#{callback_url}&scope=user-read-private%20user-read-email&response_type=token&state=123"
  end
end
