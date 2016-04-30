defmodule ShoppingCart.Api.CartView do
  use ShoppingCart.Api.Web, :view

  def render("add.json", %{cart: cart}) do
    %{foo: cart}
  end
end