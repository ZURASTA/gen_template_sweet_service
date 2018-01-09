defmodule Mix.Gen.Template.SweetService do
    @moduledoc File.read!(Path.join([__DIR__, "../README.md"]))

    use MixTemplates,
        name:       :sweet_service,
        short_desc: "Template for creating interfaceable services",
        source_dir: "../template",
        options: [
            dialyzer: [],
            ecto: [],
            defecto: [],
            protecto: []
        ]
end
