defmodule HelloWeb.HelloController do
    use HelloWeb, :controller

    action_fallback HelloWeb.MyFallbackController

    def index(conn, _params) do
      render(conn, external: "https://elixir-lang.org/")
    end

    def show(conn, %{"messenger" => messenger}) do
        conn
        |> Plug.Conn.assign(:messenger, messenger)
        |> Plug.Conn.assign(:receiver, "Dweezil")
        |> put_root_layout("admin.html")
        |> render("show.html")
        #json(conn, %{id: messenger})
        #render(conn, "show.html", messenger: messenger)
    end


end