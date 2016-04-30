defmodule Cart do
  use Timex
  def new, do: %{current: [], events: []}

  def add(cart, item) do
    %{cart | current: add_to_current(cart.current, item),
              events: add_to_events(cart.events, item, :add)}
  end

  def remove(cart, item) do
    %{cart | current: remove_from_current(cart.current, item),
              events: add_to_events(cart.events, item, :remove)}
  end

  defp add_to_current(current, item) do
    [item | current]
  end

  defp add_to_events(events, item, method) do
    [{item, method, Time.now} | events]
  end

  defp remove_from_current(current, item) do
    List.delete(current, item)
  end
end
