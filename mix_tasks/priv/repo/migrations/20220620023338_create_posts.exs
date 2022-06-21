defmodule MixTasks.Repo.Migrations.CreatePosts do
  use Ecto.Migration

  def change do
    create table(:posts) do
      add :botitletring, :string
      add :wocontent, :integer

      timestamps()
    end
  end
end
