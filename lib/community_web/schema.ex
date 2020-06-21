defmodule CommunityWeb.Schema do
  use Absinthe.Schema

  import_types CommunityWeb.Schema.NewsTypes

  query do
    import_fields :news_queries
  end

  mutation do
    import_fields :news_mutations
  end
end
