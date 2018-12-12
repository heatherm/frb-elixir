defmodule FrbWeb.PageController do
  use FrbWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
