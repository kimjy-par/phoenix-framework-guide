defmodule MixTasks.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :body, :string
      add :word_count, :integer

      timestamps()
    end
  end
end
