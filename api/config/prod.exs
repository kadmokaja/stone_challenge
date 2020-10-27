use Mix.Config

# For production, don't forget to configure the url host
# to something meaningful, Phoenix uses this information
# when generating URLs.
#
# Note we also include the path to a cache manifest
# containing the digested version of static files. This
# manifest is generated by the `mix phx.digest` task,
# which you should run after static files are built and
# before starting your production server.
config :stone_challenge, StoneChallengeWeb.Endpoint,
  load_from_system_env: true,
  http: [port: 4000],
  cache_static_manifest: "priv/static/cache_manifest.json",
  secret_key_base: Map.fetch!(System.get_env(), "SECRET_KEY_BASE"),
  server: true

# Do not print debug messages in production
config :logger, level: :info

config :stone_challenge, StoneChallenge.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: System.get_env("USER"),
  password: System.get_env("PASSWORD"),
  database: System.get_env("DATABASE"),
  hostname: System.get_env("HOST"),
  show_sensitive_data_on_connection_error: true,
  pool_size: 10
