defmodule Finnbot.MixProject do
  use Mix.Project

  def project do
    [
      app: :finnbot,
      version: "0.0.1",
      elixir: "~> 1.9",
      build_embedded: Mix.env == :prod,
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger, :exirc],
      mod: {Finnbot, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:exirc, ">= 1.1.0"}
    ]
  end
end
