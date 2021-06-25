defmodule Tmdb.Movies do
  def find(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}", query: params).body
  end

  def genres(client) do
    Tesla.get!(client, "genre/movie/list").body
  end

  def images(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}/images", query: params).body
  end

  def latest(client, params \\ []) do
    Tesla.get!(client, "movie/latest", query: params).body
  end

  def now_playing(client, params \\ []) do
    Tesla.get!(client, "movie/now_playing", query: params).body
  end

  def popular(client, params \\ []) do
    Tesla.get!(client, "movie/popular", query: params).body
  end

  def similar(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}/similar", query: params).body
  end

  def top(client, params \\ []) do
    Tesla.get!(client, "movie/top_rated", query: params).body
  end

  def upcoming(client, params \\ []) do
    Tesla.get!(client, "movie/upcoming", query: params).body
  end

  def videos(client, id, params \\ []) do
    Tesla.get!(client, "movie/#{id}/videos", query: params).body
  end
end
