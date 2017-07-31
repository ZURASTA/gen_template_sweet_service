defmodule <%= @project_name_camel_case %>.API.Mixfile do
    use Mix.Project

    def project do
        [
            app: :<%= @project_name %>_api,
            version: "0.1.0",
            build_path: "../../_build",
            config_path: "../../config/config.exs",
            deps_path: "../../deps",
            lockfile: "../../mix.lock",
            elixir: "~> <%= Version.parse!(@elixir_version).major %>.<%= Version.parse!(@elixir_version).minor %>",
            build_embedded: Mix.env == :prod,
            start_permanent: Mix.env == :prod,
            deps: deps(Mix.Project.umbrella?)
        ]
    end

    # Configuration for the OTP application
    #
    # Type "mix help compile.app" for more information
    def application do
        [extra_applications: [:logger]]
    end

    # Dependencies can be Hex packages:
    #
    #   {:my_dep, "~> 0.3.0"}
    #
    # Or git/path repositories:
    #
    #   {:my_dep, git: "https://github.com/elixir-lang/my_dep.git", tag: "0.1.0"}
    #
    # To depend on another app inside the umbrella:
    #
    #   {:my_app, in_umbrella: true}
    #
    # Type "mix help deps" for more examples and options
    defp deps(false) do
        [
            { :<%= @project_name %>_service, path: "../<%= @project_name %>_service", only: :test }
        ]
    end
    defp deps(true), do: []
end
