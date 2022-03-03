defmodule ShortenApi.Links.Link do
  use Ecto.Schema
  import Ecto.Changeset
  alias ShortenApi.Ecto.HashId

  @primary_key {:hash, HashId, [autogenerate: true]}
  @derive {Phoenix.Param, key: :hash}
  schema "links" do
    field :url, :string

    timestamps()
  end

  @spec changeset(
          {map, map}
          | %{
              :__struct__ => atom | %{:__changeset__ => map, optional(any) => any},
              optional(atom) => any
            },
          :invalid | %{optional(:__struct__) => none, optional(atom | binary) => any}
        ) :: Ecto.Changeset.t()
  @doc false
  def changeset(link, attrs) do
    link
    |> cast(attrs, [:url])
    |> validate_required([:url])
  end
end
