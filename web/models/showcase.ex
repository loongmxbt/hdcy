defmodule Hdcy.Showcase do
  use Hdcy.Web, :model

  schema "showcases" do
    field :name, :string
    field :desc, :string
    field :image, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :desc, :image])
    |> validate_required([:name, :desc, :image])
  end
end
