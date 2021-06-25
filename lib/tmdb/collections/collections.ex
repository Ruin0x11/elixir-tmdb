defmodule Tmdb.Collections do
  def find(client, id) do
    Tesla.get!(client, "collection/#{id}").body
  end

  @doc ~S"""
  Search for collections by name.
    ## Required Parameters
    api_key
    query:	CGI escaped string
    ## Optional Parameters
    page:	Minimum 1, maximum 1000.
    language:	ISO 639-1 code.
    ## Examples
    iex> Tmdb.Search.collection("Star")
    %{"page" => 1,
      "results" => [
       %{"backdrop_path" => nil, "id" => 325798,
         "name" => "Star Crash Collection", "poster_path" => nil},
       %{"backdrop_path" => nil, "id" => 141748,
         "name" => "Robot Chicken: Star Wars Collection",
      "poster_path" => "/p3Zc72CqZJveY3psC7aCuaMUI9W.jpg"}
      ], "total_pages" => 1,
      "total_results" => 18}
  """
  def images(client, id, params \\ []) do
    Tesla.get!(client, "collection/#{id}/images", query: params).body
  end
end
