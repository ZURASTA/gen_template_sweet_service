defmodule GenTemplateSweetService.Mixfile do
    use Mix.Project

    def project do
        [
            app: :gen_template_sweet_service,
            description: "Template for creating interfaceable services",
            version: "0.1.0",
            elixir: "~> 1.4",
            build_embedded: Mix.env == :prod,
            start_permanent: Mix.env == :prod,
            deps: deps(),
            package: package()
        ]
    end

    defp deps do
        [
            { :mix_templates, "> 0.0.0", app: false },
            { :ex_doc, "> 0.0.0", only: [:dev, :test] },
        ]
    end

    defp package do
        [
            files: ["lib", "mix.exs", "README.md", "LICENSE", "template"],
            maintainers: ["Stefan Johnson"],
            licenses: ["BSD 2-Clause"],
            links: %{ "GitHub" => "https://github.com/ZURASTA/gen_template_sweet_service" }
        ]
    end
end
