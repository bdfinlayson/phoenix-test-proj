defmodule PhoenixTestProj.UserController do
  use PhoenixTestProj.Web, :controller

  def index(conn, _params) do
    users = Repo.all(PhoenixTestProj.User)
    render conn, "index.html", users: users
  end

  def show(conn, %{"id" => id}) do
    user = Repo.get(PhoenixTestProj.User, id)
    render conn, "show.html", user: user
  end
end
