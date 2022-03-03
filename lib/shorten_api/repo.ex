defmodule ShortenApi.Repo do
  use Ecto.Repo,
    otp_app: :shorten_api,
    adapter: Ecto.Adapters.Postgres
  # use Ecto.Repo,
  #   otp_app: :shorten_api,
  #   adapter: Ecto.Adapters.Mnesia
end
