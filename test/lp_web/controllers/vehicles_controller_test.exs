defmodule LpWeb.VehiclesControllerTest do
  use LpWeb.ConnCase

  test "finds vehicle", %{conn: conn} do
    conn = get(conn, Routes.vehicles_path(conn, :index), %{"lp" => "abc123"})

    assert %{"make" => "Toyota", "model" => "Corolla", "state" => "TX", "year" => 2020} ==
             json_response(conn, 200)
  end

  test "400 on invalid input", %{conn: conn} do
    conn = get(conn, Routes.vehicles_path(conn, :index))

    assert response(conn, 400)
  end
end
