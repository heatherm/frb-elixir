defmodule FrbWeb.PageControllerTest do
  use FrbWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Family Recipe Box"
  end
end
