defmodule ShoppingCart.Api.Router do
  use ShoppingCart.Api.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", ShoppingCart.Api do
    pipe_through :api

    post "/add", CartController, :add
    post "/remove", CartController, :remove
    get "/view", CartController, :view
    get "/at/:timestamp", CartController, :at
  end
end
