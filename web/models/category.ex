defmodule Hdcy.Category do
  use Hdcy.Web, :model

  schema "categories" do
    field :slug, :string
    field :name, :string
    has_many :posts, Hdcy.Post

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:slug, :name])
    |> validate_required([:slug, :name])
  end
end
