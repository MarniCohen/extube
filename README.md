# Extube

**Elixir Youtube API V3 client**

## Installation

First, create a key for the Youtube app via your Google API interface.

If [available in Hex](https://hex.pm/docs/publish), the package can be installed as:

  1. Add extube to your list of dependencies in `mix.exs`:

        def deps do
          [{:extube, "~> 0.0.1"}]
        end

  2. Add configuration options to `config.exs`;

        config :extube, Extube,
          extube_key: "my-secret-key-generated-by-google"

