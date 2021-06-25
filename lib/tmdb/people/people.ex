defmodule Tmdb.People do
  def find(client, id, params \\ []) do
    Tmdb.Client.get(client, "person/#{id}", query: params).body
  end

  def popular(client, params \\ []) do
    Tmdb.Client.get(client, "person/popular", query: params).body
  end

  def latest(client, params \\ []) do
    Tmdb.Client.get(client, "person/latest", query: params)
  end
end
