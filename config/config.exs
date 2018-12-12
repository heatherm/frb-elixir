# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :frb,
  ecto_repos: [Frb.Repo]

# Configures the endpoint
config :frb, FrbWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "99N7S6IlF8NfFyf7hebAc1wbze3S5seP6DHjew9QbYdO4Htf0jB2eNL8WLldJ8ZO",
  render_errors: [view: FrbWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Frb.PubSub, adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
