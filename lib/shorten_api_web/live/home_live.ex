defmodule ShortenApiWeb.HomeLive do
  use ShortenApiWeb, :live_view
  require Logger

  alias ShortenApiWeb.HomeView

  def render(assigns) do
    HomeView.render("home.html", assigns)
  end

  def mount(_params, _session, socket) do
    {:ok, assign(socket, :url, "")}
  end

  def handle_event("generate-url", _params, socket) do
    url = "auihsiuahsias"
    {:noreply, assign(socket, :url, url)}
  end
end
