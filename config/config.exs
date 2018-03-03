# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :elobeggers_api,
  ecto_repos: [ElobeggersApi.Repo]

# Configures the endpoint
config :elobeggers_api, ElobeggersApi.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "QcyiHRffSw2UyhXz31PqIXtBl9c90ZoZcv60dfzja+QRzrJwtHge8Gh+eZWA6wnU",
  render_errors: [view: ElobeggersApi.ErrorView, accepts: ~w(json)],
  pubsub: [name: ElobeggersApi.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
