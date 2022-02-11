defmodule ShortApi.Repo do
  use Ecto.Repo,
    otp_app: :short_api,
    adapter: Ecto.Adapters.Postgres
  # use Ecto.Repo,
  #   otp_app: :short_api,
  #   adapter: Ecto.Adapters.Mnesia
end
