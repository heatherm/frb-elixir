use Mix.Config

config :frb, FrbWeb.Endpoint,
  url: [scheme: "https", host: "frb-phx.herokuapp.com", port: 443],
  force_ssl: [rewrite_on: [:x_forwarded_proto]],
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE"),
  cache_static_manifest: "priv/static/cache_manifest.json"

config :logger, level: :info

config :frbweb, FrbWeb.Repo,
       url: System.get_env("DATABASE_URL"),
       pool_size: String.to_integer(System.get_env("POOL_SIZE") || "10"),
       ssl: true