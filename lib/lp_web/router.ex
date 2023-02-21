defmodule LpWeb.Router do
  use LpWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", LpWeb do
    pipe_through :api

    get "/vehicles", VehiclesController, :index
  end
end
