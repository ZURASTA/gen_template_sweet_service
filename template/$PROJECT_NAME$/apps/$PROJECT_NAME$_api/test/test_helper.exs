Application.ensure_all_started(:<%= @project_name %>_service)
<%= if @ecto do %>
Application.ensure_all_started(:ecto)
<% end %>

ExUnit.start()
<%= if @ecto do %>

Ecto.Adapters.SQL.Sandbox.mode(<%= @project_name_camel_case %>.Service.Repo, :manual)
<% end %>
