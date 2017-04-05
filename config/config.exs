# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :lift,
  ecto_repos: [Lift.Repo]

# Configures the endpoint
config :lift, Lift.Web.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "7keEo9/1Q4eTT6+p12Xf+VfMbHoIfk+ERIY/kGbU9BTUa8jnL7SSZVXGkIWM7V5a",
  render_errors: [view: Lift.Web.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Lift.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
