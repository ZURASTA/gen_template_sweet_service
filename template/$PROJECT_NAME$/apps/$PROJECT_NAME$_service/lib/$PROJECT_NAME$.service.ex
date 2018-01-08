<%= if @ecto do %>
defmodule <%= @project_name_camel_case %>.Service do
    @moduledoc """
      The service application for __YOUR DESCRIPTION HERE_.
    """

    use Application

    @doc """
      Start the service application.

      By default the service will run in `:auto` setup mode, which
      will automatically create and migrate the database. To override
      this behaviour, the mode can be passed in as an argument for the
      `:setup_mode` key. The supported setup modes are: `:auto` and
      `:manual`. If using manual mode, the state of the database is
      left up to the caller.
    """
    def start(_type, args) do
        import Supervisor.Spec, warn: false

        setup_mode = args[:setup_mode] || :auto

        if setup_mode == :auto do
            if Mix.env == :test do
                <%= @project_name_camel_case %>.Service.Repo.DB.drop()
            end
            <%= @project_name_camel_case %>.Service.Repo.DB.create()
        end

        children = [
            <%= @project_name_camel_case %>.Service.Repo,
            <%= @project_name_camel_case %>.Service.Filter
        ]

        opts = [strategy: :one_for_one, name: <%= @project_name_camel_case %>.Service.Supervisor]
        supervisor = Supervisor.start_link(children, opts)

        if setup_mode == :auto do
            <%= @project_name_camel_case %>.Service.Repo.DB.migrate()
        end

        supervisor
    end
end
<% else %>
defmodule <%= @project_name_camel_case %>.Service do
    @moduledoc """
      The service application for __YOUR DESCRIPTION HERE_.
    """

    use Application

    def start(_type, _args) do
        import Supervisor.Spec, warn: false

        children = [
        ]

        opts = [strategy: :one_for_one, name: <%= @project_name_camel_case %>.Service.Supervisor]
        Supervisor.start_link(children, opts)
    end
end
<% end %>
