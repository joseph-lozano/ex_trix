defmodule ExTrixWeb.PageLive do
  use ExTrixWeb, :live_view

  @impl true
  def mount(_params, _session, socket) do
    {:ok, assign(socket, editor: true)}
  end
end
