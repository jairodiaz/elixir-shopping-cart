defmodule CartTest do
  use ExUnit.Case
  doctest Cart

  test "the cart should be empty" do
    assert Cart.current == []
  end

  test "adding to cart should return ok" do
    assert Cart.add("apple") == {:ok, _}
  end

  test "adding" do
    %{
      current: ["apple", "orange"],
      events: [
        {"apple", :add, 2},
        {"orange", :add, 1}
      ]
    }
  end
end
