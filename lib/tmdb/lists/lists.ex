defmodule Tmdb.Lists do
  def find(client, id) do
    Tesla.get!(client, "list/#{id}").body
  end

  def item_status(client, list_id, movie_id) do
    Tesla.get!(client, "list/#{list_id}/item_status", query: [movie_id: movie_id]).body
  end
end
