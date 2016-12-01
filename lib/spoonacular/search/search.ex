defmodule Spoonacular.Search do
  use Spoonacular.Base

  @doc """
  https://market.mashape.com/spoonacular/recipe-food-nutrition#search-recipes
  """
  def recipes(query, params \\ [cuisine: "", diet: "", excludeIngredient: "",
  intolerances: "", limitLicense: "", offset: 0, type: ""]) do
    params = params ++ [query: query]
    get!("recipes/search?#{URI.encode_query(params)}")
  end
end
