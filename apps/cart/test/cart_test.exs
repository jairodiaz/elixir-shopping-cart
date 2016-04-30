defmodule CartTest do
  use ExUnit.Case
  doctest Cart

  test "the cart should be empty" do
    assert Cart.current == []
  end

  test "adding to cart should return ok" do
    assert Cart.add("apple") == {:ok, ["apple"]}
  end
end
