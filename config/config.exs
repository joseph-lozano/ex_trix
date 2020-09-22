# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :ex_trix,
  ecto_repos: [ExTrix.Repo]

# Configures the endpoint
config :ex_trix, ExTrixWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "YZ05PgWcDzzABj+meQp6ykpVZkH0DsMcCgHEJHDoZDES0u5LhA7tnvWXgYLULIvg",
  render_errors: [view: ExTrixWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: ExTrix.PubSub,
  live_view: [signing_salt: "cKjBOBcQ"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
