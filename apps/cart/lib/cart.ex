defmodule Cart do
  def new, do: %{current: [], events: []}

  def add(cart, item) do
    %{cart | current: add_to_current(cart.current, item)}
  end

  defp add_to_current(current, item) do
    [item | current]
  end
end
