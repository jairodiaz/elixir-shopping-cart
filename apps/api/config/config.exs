# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# Configures the namespace used by Phoenix generators
config :api,
  app_namespace: ShoppingCart.Api

# Configures the endpoint
config :api, ShoppingCart.Api.Endpoint,
  url: [host: "localhost"],
  root: Path.dirname(__DIR__),
  secret_key_base: "WG+BgGVV9ask63dv4A0rS/4G94m7earavtkzo/iMC3S0RNKsR7vrDCHn69o4p+E3",
  render_errors: [accepts: ~w(json)],
  pubsub: [name: ShoppingCart.Api.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
