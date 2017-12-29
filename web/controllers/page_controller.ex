defmodule PhoenixTestProj.PageController do
  use PhoenixTestProj.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
