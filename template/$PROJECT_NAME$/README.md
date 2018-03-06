# <%= @project_name_camel_case %>
<%= if @org do %>
<%= if @waffle do %>
[![Stories in Ready](https://badge.waffle.io/<%= @org %>/<%= @project_name %>.png?label=ready&title=Ready)](https://waffle.io/<%= @org %>/<%= @project_name %>?utm_source=badge)<% end %><%= if @ci do %>
[![CircleCI](https://circleci.com/gh/<%= @org %>/<%= @project_name %>.svg?style=svg)](https://circleci.com/gh/<%= @org %>/<%= @project_name %>)<% end %><% end %>

**TODO: Add description**


### Usage

The service component (`<%= @project_name_camel_case %>.Service`) is an OTP application that should be started prior to making any requests to the service. This component should only be interacted with to configure/control the service explicitly.

An API (`<%= @project_name_camel_case %>.API`) is provided to allow for convenient interaction with the service from external applications.


**TODO: Add detailed overview/instructions**


Configuration
-------------

The service may be configured with the following options:

### Server

The service can be made available through various methods customisable using the `:server` key in the service and API configs. The `:server:` key expects the value to be a function that accepts a module and returns a value acceptable by the `server` argument of GenServer requests, or name field of GenServer registration. Some examples of this can be:

#### Local Named Server

```elixir
config :<%= @project_name %>_service,
    server: &(&1)

config :<%= @project_name %>_api,
    server: &(&1)
```

#### Distributed Named Server

```elixir
config :<%= @project_name %>_service,
    server: &(&1)

config :<%= @project_name %>_api,
    server: &({ &1, :"foo@127.0.0.1" })
```
<%= if @swarm do %>

#### Swarm Registered Server

```elixir
config :<%= @project_name %>_service,
    server: &({ :via, :swarm, &1 })

config :<%= @project_name %>_api,
    server: &({ :via, :swarm, &1 })
```
<% end %>

### Setup Mode

The service has two setup modes: `:auto` and `:manual`. When the service is started in `:auto`, it will automatically handle creating and migrating the database. When the service is started in `:manual`, the state of the database is left up to the user to manually setup.

By default the service runs in `:auto` mode. To change this behaviour, pass in the `{ :setup_mode, mode }` when starting the application.
<%= if @ecto do %>

### Database

The database options can be configured by providing the config for the key `<%= @project_name_camel_case %>.Service.Repo`.

For details on how to configure an [Ecto repo](https://hexdocs.pm/ecto/Ecto.Repo.html).
<% end %>
