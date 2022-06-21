import Config

# Only in tests, remove the complexity from the password hashing algorithm
config :bcrypt_elixir, :log_rounds, 1

# Configure your database
#
# The MIX_TEST_PARTITION environment variable can be used
# to provide built-in test partitioning in CI environment.
# Run `mix help test` for more information.
config :mix_tasks, MixTasks.Repo,
  username: "postgres",
  password: "postgres",
  hostname: "localhost",
  database: "mix_tasks_test#{System.get_env("MIX_TEST_PARTITION")}",
  pool: Ecto.Adapters.SQL.Sandbox,
  pool_size: 10

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :mix_tasks, MixTasksWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "+gQMdzvqiwFUwSuA0JW5W5cGViZ3tP0cIm9N5UWelBpbdqI5chCstLbFs9pKbIgN",
  server: false

# In test we don't send emails.
config :mix_tasks, MixTasks.Mailer, adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
