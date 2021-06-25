defmodule Tmdb do
  def configuration(client) do
    Tesla.get(client, "configuration")
  end
end
