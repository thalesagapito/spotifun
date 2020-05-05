defmodule Spotifun.Repo do
  use Ecto.Repo,
    otp_app: :spotifun,
    adapter: Ecto.Adapters.MyXQL
end
