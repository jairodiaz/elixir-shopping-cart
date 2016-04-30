defmodule Cart do
  use Timex
  def new, do: %{current: [], events: []}

  def add(cart, item) do
    %{cart | current: add_to_current(cart.current, item),
              events: add_to_events(cart.events, item)}
  end

  defp add_to_current(current, item) do
    [item | current]
  end

  defp add_to_events(events, item) do
    [{item, :add, Time.now} | events]
  end
end
