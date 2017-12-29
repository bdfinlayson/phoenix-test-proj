defmodule PhoenixTestProj.UserView do
  use PhoenixTestProj.Web, :view
  alias PhoenixTestProj.User

  def first_name(%User{name: name}) do
    name
    |> String.split(" ")
    |> Enum.at(0)
  end
end
