defmodule Hdcy.Repo.Migrations.CreateCategory do
  use Ecto.Migration

  def change do
    create table(:categories) do
      add :slug, :string
      add :name, :string

      timestamps()
    end

  end
end
