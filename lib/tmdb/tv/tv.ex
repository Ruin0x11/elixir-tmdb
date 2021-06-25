defmodule Tmdb.Tv do
  def find(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}", query: params).body
  end

  def account_states(client, id, session_id) do
    Tmdb.Client.get(client, "tv/#{id}/account_states", query: session_id).body
  end

  def alternative_titles(client, id) do
    Tmdb.Client.get(client, "tv/#{id}/alternative_titles").body
  end

  def changes(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/changes", query: params).body
  end

  def content_ratings(client, id) do
    Tmdb.Client.get(client, "tv/#{id}/content_ratings").body
  end

  def credits(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/credits", query: params).body
  end

  def external_ids(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/external_ids", query: params).body
  end

  def images(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/images", query: params).body
  end

  def keywords(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/keywords", query: params).body
  end

  def rating(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/rating", query: params).body
  end

  def similar(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/similar", query: params).body
  end

  def translations(client, id) do
    Tmdb.Client.get(client, "tv/#{id}/translations").body
  end

  def videos(client, id, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/videos", query: params).body
  end

  def latest(client) do
    Tmdb.Client.get(client, "tv/latest").body
  end

  def on_the_air(client, params \\ []) do
    Tmdb.Client.get(client, "tv/on_the_air", query: params).body
  end

  def airing_today(client, params \\ []) do
    Tmdb.Client.get(client, "tv/airing_today", query: params).body
  end

  def top_rated(client, params \\ []) do
    Tmdb.Client.get(client, "tv/top_rated", query: params).body
  end

  def popular(client, params \\ []) do
    Tmdb.Client.get(client, "tv/popular", query: params)
  end
end
