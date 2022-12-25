import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :postgrex, PostgrexWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "NzFPPnx/VK152MG1G7PRVoVwBIZ+A5UwR44lFLWSLtnMrAmL6wyLKCo2UzMV2KrL",
  server: false

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
