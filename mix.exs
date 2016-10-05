defmodule PhoenixJank.Mixfile do
  use Mix.Project

  @version "0.2.0"

  def project do
    [app: :phoenix_jank,
     version: @version,
     elixir: "~> 1.2",
     build_embedded: Mix.env == :prod,
     start_permanent: Mix.env == :prod,
     description: description,
     package: package,
     docs: [
       extras: ["README.md"],
       main: "readme",
       source_ref: "v#{@version}",
       source_url: "https://github.com/iamvery/phoenix_jank",
     ],
     deps: deps()]
  end

  # Configuration for the OTP application
  #
  # Type "mix help compile.app" for more information
  def application do
    [applications: [:logger]]
  end

  # Dependencies can be Hex packages:
  #
  #   {:mydep, "~> 0.3.0"}
  #
  # Or git/path repositories:
  #
  #   {:mydep, git: "https://github.com/elixir-lang/mydep.git", tag: "0.1.0"}
  #
  # Type "mix help deps" for more examples and options
  defp deps do
    [
      {:phoenix, "~> 1.0"},
      {:plug, "~> 1.1"},
      {:ex_doc, ">= 0.0.0", only: :dev},
    ]
  end

  defp description do
    """
    Phoenix integration with Jank front-end
    """
  end

  defp package do
    [
      name: :phoenix_jank,
      files: ~w(lib config mix.exs index.js package.json README.md),
      maintainers: ["Jay Hayes"],
      licenses: ["MIT"],
      links: %{"GitHub" => "https://github.com/iamvery/phoenix_jank"},
    ]
  end
end
