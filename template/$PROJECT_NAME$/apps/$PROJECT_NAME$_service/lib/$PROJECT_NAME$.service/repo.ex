<% MixTemplates.ignore_file_and_directory_unless @ecto %>
defmodule <%= @project_name_camel_case %>.Service.Repo do
    use Ecto.Repo, otp_app: :<%= @project_name %>_service

    def child_spec(args) do
        %{
            id: __MODULE__,
            start: { __MODULE__, :start_link, [args] },
            type: :supervisor
        }
    end
end
