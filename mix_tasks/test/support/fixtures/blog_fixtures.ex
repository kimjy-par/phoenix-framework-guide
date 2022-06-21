defmodule MixTasks.BlogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `MixTasks.Blog` context.
  """

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        body: "some body",
        word_count: 42
      })
      |> MixTasks.Blog.create_post()

    post
  end

  @doc """
  Generate a post.
  """
  def post_fixture(attrs \\ %{}) do
    {:ok, post} =
      attrs
      |> Enum.into(%{
        botitletring: "some botitletring",
        wocontent: 42
      })
      |> MixTasks.Blog.create_post()

    post
  end
end
