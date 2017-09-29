defmodule H2gqlWeb.NewsResolver do
  alias H2gql.News

  def all_links(_root, _args, _info) do
    links = News.list_links()
    {:ok, links}
  end
end
