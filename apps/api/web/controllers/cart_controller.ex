defmodule ShoppingCart.Api.CartController do
  use ShoppingCart.Api.Web, :controller
  use Timex

  def add(conn, _params) do
    render(conn, "add.json", cart: Cart.new)
  end

  def remove(conn, _params) do
    
  end

  def view(conn, _params) do
    
  end

  def at(conn, _params, timestamp) do
  end
end