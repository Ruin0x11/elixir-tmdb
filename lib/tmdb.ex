defmodule Tmdb do
  def configuration(client) do
    Tmdb.Client.get(client, "configuration")
  end
end
