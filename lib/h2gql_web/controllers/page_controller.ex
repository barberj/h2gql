defmodule H2gqlWeb.PageController do
  use H2gqlWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
