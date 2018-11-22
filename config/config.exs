# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :tercle,
  ecto_repos: [Tercle.Repo]

# Configures the endpoint
config :tercle, TercleWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "y5Z7pqmDIMSoIW050o5b4juOvtvowsO23hdkFPf+1xfUGfb86sgipp/FgxbS0+Vc",
  render_errors: [view: TercleWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Tercle.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
