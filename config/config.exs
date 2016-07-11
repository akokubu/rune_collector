# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :rune_collector,
  ecto_repos: [RuneCollector.Repo]

# Configures the endpoint
config :rune_collector, RuneCollector.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "h4IHaYFSXt8zsSgYAmeCJWXc/N2mxQboINWcGQRZVacj5QQ3jALj+nsSWPWhcDGl",
  render_errors: [view: RuneCollector.ErrorView, accepts: ~w(html json)],
  pubsub: [name: RuneCollector.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
