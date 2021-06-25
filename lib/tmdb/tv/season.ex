defmodule Tmdb.Tv.Season do
  def season_number(client, id, season_number, params \\ []) do
    Tmdb.Client.get(client, "tv/#{id}/season/#{season_number}", query: params)
  end
end
