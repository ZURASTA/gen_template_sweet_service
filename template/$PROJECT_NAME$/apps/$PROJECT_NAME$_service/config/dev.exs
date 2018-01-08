<% MixTemplates.ignore_file_and_directory_unless @ecto %>
use Mix.Config

# Do not include metadata nor timestamps in development logs
config :logger, :console, format: "[$level] $message\n"

# Configure database
config :<%= @project_name %>_service, <%= @project_name_camel_case %>.Service.Repo,
    adapter: Ecto.Adapters.Postgres,
    username: "postgres",
    password: "postgres",
    database: "<%= @project_name %>_service_dev",
    hostname: "localhost",
    pool_size: 10
