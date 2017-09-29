defmodule H2gqlWeb.Schema do
  use Absinthe.Schema

  alias H2gqlWeb.News

  object :link do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
  end

  mutation do
    field :create_link, :link do
      arg :url, non_null(:string)
      arg :description, non_null(:string)

      resolve &H2gqlWeb.NewsResolver.create_link/3
    end
  end

  query do
    field :all_links, non_null(list_of(non_null(:link))) do
      resolve &H2gqlWeb.NewsResolver.all_links/3
    end
  end
end
