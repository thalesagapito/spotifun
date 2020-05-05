defmodule SpotifunWeb.PageController do
  use SpotifunWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
