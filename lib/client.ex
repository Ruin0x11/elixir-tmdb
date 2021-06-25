defmodule Tmdb.Client do
  @moduledoc false

  @doc """
  Returns a client instance you'll need to make api calls
  """
  def new(api_key) do
    [
      {Tesla.Middleware.BaseUrl, "http://api.themoviedb.org/3/"},
      Tesla.Middleware.JSON,
      {Tesla.Middleware.Query, api_key: api_key}
    ]
    |> Tesla.client
  end
end
