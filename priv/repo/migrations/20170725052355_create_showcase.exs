defmodule Hdcy.Repo.Migrations.CreateShowcase do
  use Ecto.Migration

  def change do
    create table(:showcases) do
      add :name, :string
      add :desc, :string
      add :image, :string

      timestamps()
    end

  end
end
