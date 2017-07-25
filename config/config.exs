# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :hdcy,
  ecto_repos: [Hdcy.Repo]

# Configures the endpoint
config :hdcy, Hdcy.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "s8oLy4gS0tLytUSr8yB8QZw6n+vw6q00NuChaITZXQv4v/UlWr8RLW3wwmnC3yPH",
  render_errors: [view: Hdcy.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Hdcy.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Locale
config :hdcy, Hdcy.Gettext,
  default_locale: "zh_CN"

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"

config :xain, :after_callback, {Phoenix.HTML, :raw}

# ExAdmin
config :ex_admin,
  repo: Hdcy.Repo,
  module: Hdcy,
  modules: [
    Hdcy.ExAdmin.Dashboard,
    Hdcy.ExAdmin.User,
    Hdcy.ExAdmin.Post,
    Hdcy.ExAdmin.Category
  ]

# %% Coherence Configuration %%   Don't remove this line
config :coherence,
  user_schema: Hdcy.User,
  repo: Hdcy.Repo,
  module: Hdcy,
  router: Hdcy.Router,
  messages_backend: Hdcy.Coherence.Messages,
  logged_out_url: "/",
  email_from_name: "Your Name",
  email_from_email: "yourname@example.com",
  opts: [:authenticatable, :recoverable, :lockable, :trackable, :unlockable_with_token, :registerable]

config :coherence, Hdcy.Coherence.Mailer,
  adapter: Swoosh.Adapters.Sendgrid,
  api_key: "your api key here"
# %% End Coherence Configuration %%
