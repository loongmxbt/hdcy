defmodule Hdcy.Repo.Migrations.CreatePost do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :title, :string
      add :slug, :string
      add :image, :string
      add :desc, :string
      add :body, :text
      add :category_id, references(:categories, on_delete: :nothing)

      timestamps()
    end
    create index(:posts, [:category_id])

  end
end
