defmodule GcpElixir.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application


  defp ace_config, do: 
    [ port: AppConfig.get_env_integer(:gcp_elixir, :http_port, 8080),
      cleartext: true ]

  def start(_type, _args) do
    import Supervisor.Spec, warn: false

    children = [
      worker(GcpElixir.Web, [%{greeting: "Hello"}, ace_config()]),
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: GcpElixir.Supervisor]
    Supervisor.start_link(children, opts)
  end
end
