defmodule Thebacklog.BacklogFixtures do
  @moduledoc """
  This module defines test helpers for creating
  entities via the `Thebacklog.Backlog` context.
  """

  @doc """
  Generate a story.
  """
  def story_fixture(attrs \\ %{}) do
    {:ok, story} =
      attrs
      |> Enum.into(%{
        body: "some body"
      })
      |> Thebacklog.Backlog.create_story()

    story
  end
end
