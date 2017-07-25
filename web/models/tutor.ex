defmodule Hdcy.Tutor do
  use Hdcy.Web, :model

  schema "tutors" do
    field :name, :string
    field :desc, :string
    field :image, :string
    field :body, :string

    timestamps()
  end

  @doc """
  Builds a changeset based on the `struct` and `params`.
  """
  def changeset(struct, params \\ %{}) do
    struct
    |> cast(params, [:name, :desc, :image, :body])
    |> validate_required([:name, :desc, :image, :body])
  end
end
