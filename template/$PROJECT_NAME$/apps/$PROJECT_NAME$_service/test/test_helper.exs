ExUnit.start()
<%= if @ecto do %>

Ecto.Adapters.SQL.Sandbox.mode(<%= @project_name_camel_case %>.Service.Repo, :manual)
<% end %>
