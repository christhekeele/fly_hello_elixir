defmodule HelloElixir.Application.Web do
  def child_spec(opts) do
    %{
      id: __MODULE__,
      start: {__MODULE__, :start_link, [opts]}
    }
  end

  def start_link(opts \\ []) do
    {:ok, _} = Plug.Adapters.Cowboy.http(HelloElixir.Router, opts)
  end
end
