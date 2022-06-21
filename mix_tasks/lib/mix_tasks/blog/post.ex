defmodule MixTasks.Blog.Post do
  use Ecto.Schema
  import Ecto.Changeset

  schema "posts" do
    field :botitletring, :string
    field :wocontent, :integer

    timestamps()
  end

  @doc false
  def changeset(post, attrs) do
    post
    |> cast(attrs, [:botitletring, :wocontent])
    |> validate_required([:botitletring, :wocontent])
  end
end
