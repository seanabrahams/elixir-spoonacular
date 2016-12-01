# Spoonacular

Elixir library for [Spoonacular's API](https://spoonacular.com/food-api).

This library is open source (MIT License) and welcomes contributions!

## Installation

1. Add spoonacular to your list of dependencies in `mix.exs`:

```elixir
  def deps do
    [{:spoonacular, git: "https://github.com/seanabrahams/elixir-spoonacular.git"}]
  end
```

```elixir
  config :spoonacular,
    api_key: "Your Spoonacular API key"
```

## Usage

```elixir
Spoonacular.Search.recipes("rice") # Search for a recipe
```
