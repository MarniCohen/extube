defmodule Extube do

  def config, do: Application.get_env(:extube, Extube)
  def config(key), do: Keyword.get(config, key)
  
  if !Application.get_env(:extube, Extube), do: raise "Extube is not configured"
  
  def extube_test() do
    search("cats")
  end
  
  def search(term) do
    url = search_url(term)
    case HTTPoison.get(url) do
      {:ok, %HTTPoison.Response{status_code: 200, body: body}} ->
        {:ok, Poison.Parser.parse!(body)}
        #{:ok, body}
      _ ->
        {:error}
      #{:ok, %HTTPoison.Response{status_code: 404}} ->
      #  {:error}
      #{:error, %HTTPoison.Error{reason: reason}} ->
      #  {:error}
    end
  end

  def search_url(term) do
    "https://www.googleapis.com/youtube/v3/search?key="
      <> config(:extube_key)
      <> "&part=snippet&maxResults=50&query="
      <> URI.encode(term)
  end
end
