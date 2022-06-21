defmodule MixTasksWeb.PageController do
  use MixTasksWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
