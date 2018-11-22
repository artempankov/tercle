defmodule TercleWeb.PageController do
  use TercleWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
