defmodule LpWeb.VehiclesController do
  use LpWeb, :controller

  def index(conn, %{"lp" => lp} = _params) do
    case lookup(lp) do
      nil ->
        conn
        |> put_status(404)
        |> text("")

      vehicle ->
        conn
        |> put_status(200)
        |> json(vehicle)
    end
  end

  def index(conn, _params) do
    conn
    |> put_status(400)
    |> text("")
  end

  defp lookup(lp) do
    %{
      "abc123" => %{
        state: "TX",
        year: 2020,
        make: "Toyota",
        model: "Corolla"
      },
      "xyz789" => %{
        state: "IL",
        year: 2018,
        make: "Nissan",
        model: "Murano"
      },
      "tuv678" => %{
        state: "TX",
        year: 2021,
        make: "Ford",
        model: "Explorer"
      }
    }
    |> Map.get(lp)
  end
end
