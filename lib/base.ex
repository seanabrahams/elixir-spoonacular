defmodule Spoonacular.Base do
  defmacro __using__(_) do
    quote do
      use HTTPoison.Base

      defp process_request_headers(headers) when is_map(headers) do
        api_key = Application.fetch_env!(:spoonacular, :api_key)
        headers = Map.merge(headers, %{
          "X-Mashape-Key" => api_key,
          "Accept" => "application/json",
        })
        Enum.into(headers, [])
      end

      defp process_request_headers(headers) do
        api_key = Application.fetch_env!(:spoonacular, :api_key)
        headers ++ [
          {"X-Mashape-Key", api_key},
          {"Accept", "application/json"},
        ]
      end

      defp process_response_body(body) do
        body
        |> Poison.decode!
      end

      defp process_url(url) do
        "https://spoonacular-recipe-food-nutrition-v1.p.mashape.com/" <> url
      end
    end
  end
end
