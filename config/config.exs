# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :h2gql,
  ecto_repos: [H2gql.Repo]

# Configures the endpoint
config :h2gql, H2gqlWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "W0Q+K6KVPV40tsirclot7A58VfGPDoWcD4srvu2P2NvAmclu8RFKa2VFvn6EXxjN",
  render_errors: [view: H2gqlWeb.ErrorView, accepts: ~w(json)],
  pubsub: [name: H2gql.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
