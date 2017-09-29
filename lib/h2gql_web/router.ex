defmodule H2gqlWeb.Router do
  use H2gqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", H2gqlWeb do
    pipe_through :api
  end
end
