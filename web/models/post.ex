defmodule Hdcy.Post do
  use Hdcy.Web, :model

  schema "posts" do
    field :title, :string
    field :slug, :string
    field :image, :string
    field :desc, :string
    field :body, :string
    belongs_to :category, Hdcy.Category

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:title, :slug, :image, :desc, :body])
    |> validate_required([:title, :body])
  end
end
