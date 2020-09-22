defmodule ExTrixWeb.PageLive do
  use ExTrixWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, editor: true)}
  end

  @impl true
  def handle_event(event, params, socket) do
    IO.inspect(params, label: event)
    {:noreply, socket}
  end
end
