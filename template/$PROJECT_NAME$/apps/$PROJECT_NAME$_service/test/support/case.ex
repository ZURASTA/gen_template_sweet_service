<% MixTemplates.ignore_file_and_directory_unless @ecto %>
defmodule <%= @project_name_camel_case %>.Service.Case do
    @moduledoc """
      This module defines the test case to be used by all tests.
    """

    use ExUnit.CaseTemplate

    using do
        quote do
            import Ecto
            import Ecto.Changeset
            import Ecto.Query
        end
    end

    setup tags do
        :ok = Ecto.Adapters.SQL.Sandbox.checkout(<%= @project_name_camel_case %>.Service.Repo)

        unless tags[:async] do
            Ecto.Adapters.SQL.Sandbox.mode(<%= @project_name_camel_case %>.Service.Repo, { :shared, self() })
        end

        :ok
    end
end
