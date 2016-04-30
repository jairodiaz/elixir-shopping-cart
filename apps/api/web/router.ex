defmodule ShoppingCart.Api.Router do
  use ShoppingCart.Api.Web, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ShoppingCart.Api do
    pipe_through :api
  end
end
