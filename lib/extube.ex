defmodule Extube do
  #@config domain: Application.get_env(:my_app, :extube_url),
  #        key: Application.get_env(:my_app, :extube_key)
  #use @config

  @doc false
  def config, do: Application.get_env(:extube, Extube)
  @doc false
  def config(key), do: Keyword.get(config, key)
  #@doc false
  #def config(key, default), do: Keyword.get(config, key, default)
  
  def extube_test() do
    IO.inspect %{url: config(:extube_url), key: config(:extube_key)}
  end
  
  def request_token() do
  
  end
  
end
