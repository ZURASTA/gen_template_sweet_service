<% MixTemplates.ignore_file_unless @blueprint %>
# Overview

Overview of the service.

## Applications

```bash
blueprint plot app --colour --messages --servers .servers.exs --path _build/prod/lib
```
@blueprint[plot app --colour --messages --servers .servers.exs --path _build/prod/lib]


## Modules

```bash
blueprint plot mod --colour --messages --simple --servers .servers.exs --path _build/prod/lib/<%= @project_name %>_api --path _build/prod/lib/<%= @project_name %>_service
```
@blueprint-h480px-embed-w800%-h800%[plot mod --colour --messages --simple --servers .servers.exs --path _build/prod/lib/<%= @project_name %>_api --path _build/prod/lib/<%= @project_name %>_service]


## Functions

```bash
blueprint plot fun --colour --simple --path _build/prod/lib/<%= @project_name %>_api --path _build/prod/lib/<%= @project_name %>_service
```
@blueprint-h480px-embed-w3500%-h3500%[plot fun --colour --simple --path _build/prod/lib/<%= @project_name %>_api --path _build/prod/lib/<%= @project_name %>_service]
