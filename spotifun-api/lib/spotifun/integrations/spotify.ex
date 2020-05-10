defmodule Spotifun.Integrations.Spotify do
  def get_favorite_artists(token) do
    get_credentials(token)
    |> Spotify.Personalization.top_artists()
    |> parse_artists()
  end

  defp get_credentials(token) do
    Spotify.Credentials.get_tokens_from_response(%{"access_token" => token})
    |> Spotify.Credentials.new()
  end

  defp parse_artists(_response = {:ok, %Paging{items: artists}}) do
    artists
    |> Enum.map(fn %Spotify.Artist{id: id, images: images, name: name} -> %{id: id, images: images, name: name} end)
  end

end
