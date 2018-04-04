defmodule GcpElixir.MixProject do
  use Mix.Project

  def project do
    [
      app: :gcp_elixir,
      version: "0.1.0",
      elixir: "~> 1.6",
      start_permanent: Mix.env() == :prod,
      deps: deps()
    ]
  end

  # Run "mix help compile.app" to learn about applications.
  def application do
    [
      extra_applications: [:logger],
      mod: {GcpElixir.Application, []}
    ]
  end

  # Run "mix help deps" to learn about dependencies.
  defp deps do
    [
      {:ace, "~> 0.15"},
      {:app_config, "~> 0.4"},

      {:exsync, "~> 0.2", only: :dev, env: :dev},
      {:distillery, "~> 1.5", runtime: false},
    ]
  end
end
