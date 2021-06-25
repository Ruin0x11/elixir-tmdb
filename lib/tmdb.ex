defmodule Tmdb do
  def configuration(client) do
    Tesla.get!(client, "configuration").body
  end
end
