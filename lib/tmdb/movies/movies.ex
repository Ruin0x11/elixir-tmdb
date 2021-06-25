defmodule Tmdb.Movies do
  def find(client, id) do
    Tesla.get!(client, "movie/#{id}", query: [append_to_response: "trailers"]).body
  end

  def genres(client) do
    Tesla.get!(client, "genre/movie/list").body
  end

  def images(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}/images", query: params).body
  end

  def latest(client, params \\ []) do
    Tesla.get!(client, "movie/latest", query: Keyword.put(params, :append_to_response, "videos")).body
  end

  def now_playing(client, params \\ []) do
    Tesla.get!(client, "movie/now_playing", query: Keyword.put(params, :append_to_response, "videos")).body
  end

  def popular(client, params \\ []) do
    Tesla.get!(client, "movie/popular", query: Keyword.put(params, :append_to_response, "videos")).body
  end

  def similar(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}/similar", query: Keyword.put(params, :append_to_response, "videos")).body
  end

  def top(client, params \\ []) do
    Tesla.get!(client, "movie/top_rated", query: Keyword.put(params, :append_to_response, "videos")).body
  end

  def upcoming(client, params \\ []) do
    Tesla.get!(client, "movie/upcoming", query: Keyword.put(params, :append_to_response, "videos")).body
  end

  def videos(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}/videos", query: params).body
  end
end
