defmodule ThebacklogWeb.PageControllerTest do
  use ThebacklogWeb.ConnCase

  test "GET /", %{conn: conn} do
    conn = get(conn, "/")
    assert html_response(conn, 200) =~ "Welcome to The Backlog!"
  end
end
