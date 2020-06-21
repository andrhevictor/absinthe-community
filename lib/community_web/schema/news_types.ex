defmodule CommunityWeb.Schema.NewsTypes do
  use Absinthe.Schema.Notation

  alias CommunityWeb.NewsResolver

  object :link do
    field :id, non_null(:id)
    field :url, non_null(:string)
    field :description, non_null(:string)
  end

  object :news_queries do
    @desc "Get all links"
    field :all_links, list_of(:link) do
      resolve &NewsResolver.all_links/3
    end
  end

  object :news_mutations do
    field :create_link, :link do
      arg :url, non_null(:string)
      arg :description, non_null(:string)

      resolve &NewsResolver.create_link/3
    end
  end
end
