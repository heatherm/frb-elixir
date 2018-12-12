defmodule Frb.Repo do
  use Ecto.Repo,
    otp_app: :frb,
    adapter: Ecto.Adapters.Postgres
end
