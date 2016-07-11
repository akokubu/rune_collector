use Mix.Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :rune_collector, RuneCollector.Endpoint,
  http: [port: 4001],
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Configure your database
config :rune_collector, RuneCollector.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "rune_collector_test",
  hostname: "localhost",
  pool: Ecto.Adapters.SQL.Sandbox
