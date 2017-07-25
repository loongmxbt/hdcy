defmodule Hdcy.Repo.Migrations.CreateTutor do
  use Ecto.Migration

  def change do
    create table(:tutors) do
      add :name, :string
      add :desc, :string
      add :image, :string
      add :body, :text

      timestamps()
    end

  end
end
