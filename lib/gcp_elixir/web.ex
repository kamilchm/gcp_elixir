defmodule GcpElixir.Web do
  use Ace.HTTP.Service

  @impl Raxx.Server
  def handle_request(%{method: :GET, path: []}, %{greeting: greeting}) do
    response(:ok)
    |> set_header("content-type", "text/plain")
    |> set_body("#{greeting}, GCP!")
  end

  def handle_request(_, _), do: response(:not_found)
end
