<% MixTemplates.ignore_file_and_directory_unless @ecto %>
use Mix.Config

# Do not print debug messages in production
config :logger, level: :info

# Configure database
config :<%= @project_name %>_service, <%= @project_name_camel_case %>.Service.Repo,
    adapter: Ecto.Adapters.Postgres,
    url: System.get_env("DATABASE_URL"),
    pool_size: 20
