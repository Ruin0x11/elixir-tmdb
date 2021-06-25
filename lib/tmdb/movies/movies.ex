defmodule Tmdb.Movies do
  def find(client, id, params \\ []) do
    Tesla.get(client, "movie/#{id}", query: params)
  end

  def genres(client) do
    Tesla.get(client, "genre/movie/list")
  end

  def images(client, id, params \\ []) do
    Tesla.get(client, "movie/#{id}/images", query: params)
  end

  def latest(client, params \\ []) do
    Tesla.get(client, "movie/latest", query: params)
  end

  def now_playing(client, params \\ []) do
    Tesla.get(client, "movie/now_playing", query: params)
  end

  def popular(client, params \\ []) do
    Tesla.get(client, "movie/popular", query: params)
  end

  def similar(client, id, params \\ []) do
    Tesla.get(client, "movie/#{id}/similar", query: params)
  end

  def top(client, params \\ []) do
    Tesla.get(client, "movie/top_rated", query: params)
  end

  def upcoming(client, params \\ []) do
    Tesla.get(client, "movie/upcoming", query: params)
  end

  def videos(client, id, params \\ []) do
    Tesla.get(client, "movie/#{id}/videos", query: params)
  end
end
