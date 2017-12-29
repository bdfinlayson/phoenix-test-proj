defmodule PhoenixTestProj.Repo do
  # use Ecto.Repo, otp_app: :phoenix_test_proj
  @moduledoc """
  In memory repository.
  """

  alias PhoenixTestProj.User

  def all(User) do
    [%User{id: "1", name: "Jose", username: "test1", password: "password"},
     %User{id: "2", name: "Bruce", username: "test2", password: "password"},
     %User{id: "3", name: "Sam", username: "test3", password: "password"}]
  end

  def all(_module), do: []

  def get(module, id) do
    Enum.find all(module), fn map -> map.id == id end
  end

  def get_by(module, params) do
    Enum.find all(module), fn map ->
      Enum.all?(params, fn {key, val} -> Map.get(map, key) == val end)
    end
  end
end
