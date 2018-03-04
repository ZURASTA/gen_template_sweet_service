defmodule Mix.Gen.Template.SweetService do
    @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

    use MixTemplates,
        name:       :sweet_service,
        short_desc: "Template for creating interfaceable services",
        source_dir: "../template",
        options: [
            dialyzer: [default: false],
            sibling_deps: [default: false],
            ecto: [default: false],
            defecto: [default: false],
            protecto: [default: false],
            swarm: [default: false],
            docs: [default: false],
            blueprint: [default: false],
            org: [takes: "name"],
            github: [default: false]
        ]
end
