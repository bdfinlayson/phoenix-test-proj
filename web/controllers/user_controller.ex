defmodule PhoenixTestProj.UserController do
  use PhoenixTestProj.Web, :controller

  def index(conn, _params) do
    users = Repo.all(PhoenixTestProj.User)
    render conn, "index.html", users: users
  end
end
