use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :frb, FrbWeb.Endpoint,
  http: [port: 4002],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :frb, Frb.Repo,
  username: "postgres",
  password: "postgres",
  database: "frb_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
