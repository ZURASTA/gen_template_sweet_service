<% MixTemplates.ignore_file_and_directory_unless @ecto %>
use Mix.Config

# Print only warnings and errors during test
config :logger, level: :warn

# Configure database
config :<%= @project_name %>_service, <%= @project_name_camel_case %>.Service.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: "postgres",
    password: "postgres",
    database: "<%= @project_name %>_service_test",
    hostname: "localhost",
    pool: Ecto.Adapters.SQL.Sandbox
