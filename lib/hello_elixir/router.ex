defmodule HelloElixir.Router do
  use Plug.Router

  plug(:match)
  plug(:dispatch)

  get "/" do
    conn
    |> send_resp(200, "<h1>Hello From Elixir on Fly!</h1>")
  end

  get "/*path" do
    conn
    |> send_resp(200, "<h1>Hello From Elixir from #{Path.join(path)} on Fly!</h1>")
  end

  match _ do
    conn
    |> send_resp(404, "<h1>No matching URL found!</h1>")
  end
end
