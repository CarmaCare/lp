defmodule Lp.Repo do
  use Ecto.Repo,
    otp_app: :lp,
    adapter: Ecto.Adapters.SQLite3
end
