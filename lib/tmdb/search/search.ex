defmodule Tmdb.Search do
  def companies(client, query, params \\ []) do
    search_api(client, "company", query, params)
  end

  def collections(client, query, params \\ []) do
    search_api(client, "collection", query, params)
  end

  def keywords(client, query, params \\ []) do
    search_api(client, "keyword", query, params)
  end

  def lists(client, query, params \\ []) do
    search_api(client, "list", query, params)
  end

  def movies(client, query, params \\ []) do
    search_api(client, "movie", query, params)
  end

  def multi(client, query, params \\ []) do
    search_api(client, "multi", query, params)
  end

  def persons(client, query, params \\ []) do
    search_api(client, "person", query, params)
  end

  def tv(client, query, params \\ []) do
    search_api(client, "tv", query, params)
  end

  defp search_api(client, endpoint, query, params \\ []) do
    params = Keyword.put(params, :query, query)
    Tesla.get(client, "search/#{endpoint}", query: params)
  end
end
