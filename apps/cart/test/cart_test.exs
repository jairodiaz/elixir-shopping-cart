defmodule CartTest do
  use ExUnit.Case
  doctest Cart

  test "creating a cart creates an empty cart" do
    assert Cart.new == %{current: [], events:[]}
  end

  test "Cart.add should return ok" do
    cart = Cart.new
    assert Cart.add(cart, "apple") == {:ok, _}
  end

  test "Cart.add should return a new cart with the item added to :current" do
    cart = Cart.new
    {:ok, cart} = Card.add(cart, "orange")
    {:ok, cart} = Card.add(cart, "apple")

    assert cart == %{
      current: ["apple", "orange"],
      events: _
    }
  end

  test "Cart.add should return a new cart with a new event prepended" do
    cart = Cart.new
    {:ok, cart} = Card.add(cart, "orange")
    {:ok, cart} = Card.add(cart, "apple")

    assert cart == %{
      current: _,
      events: [
        {"apple", :add, _},
        {"orange", :add, _}
      ]
    }
  end

  @tag :skip
  test "events should contain timestamps" do
    
  end
end
