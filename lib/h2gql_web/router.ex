defmodule H2gqlWeb.Router do
  use H2gqlWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/" do
    pipe_through :api

    forward "/graphiql", Absinthe.Plug.GraphiQL,
      schema: H2gqlWeb.Schema,
      interface: :simple,
      context: %{pubsub: H2gqlWeb.Endpoint}
  end
end
