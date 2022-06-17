defmodule HelloWeb.PageController do
  use HelloWeb, :controller
  plug HelloWeb.Plugs.Locale, "en" when action in [:index]

  def index(conn, _params) do
    pages = [%{title: "foo"}, %{title: "bar"}]
    render(conn, "index.json", pages: pages)
    #conn
    #|> put_flash(:info, "Welcome to Phoenix, from flash info!")
    #|> put_flash(:error, "Let's pretend we have an error.")
    #|> render("index.html")

    #redirect(conn, external: "https://elixir-lang.org/")
    #conn
    #|> put_status(202)
    #|> render("index.html")

    #conn
    #|> put_resp_content_type("text/xml")
    #|> render("index.xml", content: some_xml_content)

    #send_resp(conn, 201, "")

    #render(conn, :index)
  end
  def show(conn, _params) do
    page = %{title: "foo"}
    render(conn, "show.json", page: page)
  end

  def redirect_test(conn, _params) do
      render(conn, "index.html")
  end
end
