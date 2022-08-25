defmodule Thebacklog.BacklogTest do
  use Thebacklog.DataCase

  alias Thebacklog.Backlog

  describe "stories" do
    alias Thebacklog.Backlog.Story

    import Thebacklog.BacklogFixtures

    @invalid_attrs %{body: nil}

    test "list_stories/0 returns all stories" do
      story = story_fixture()
      assert Backlog.list_stories() == [story]
    end

    test "get_story!/1 returns the story with given id" do
      story = story_fixture()
      assert Backlog.get_story!(story.id) == story
    end

    test "create_story/1 with valid data creates a story" do
      valid_attrs = %{body: "some body"}

      assert {:ok, %Story{} = story} = Backlog.create_story(valid_attrs)
      assert story.body == "some body"
    end

    test "create_story/1 with invalid data returns error changeset" do
      assert {:error, %Ecto.Changeset{}} = Backlog.create_story(@invalid_attrs)
    end

    test "update_story/2 with valid data updates the story" do
      story = story_fixture()
      update_attrs = %{body: "some updated body"}

      assert {:ok, %Story{} = story} = Backlog.update_story(story, update_attrs)
      assert story.body == "some updated body"
    end

    test "update_story/2 with invalid data returns error changeset" do
      story = story_fixture()
      assert {:error, %Ecto.Changeset{}} = Backlog.update_story(story, @invalid_attrs)
      assert story == Backlog.get_story!(story.id)
    end

    test "delete_story/1 deletes the story" do
      story = story_fixture()
      assert {:ok, %Story{}} = Backlog.delete_story(story)
      assert_raise Ecto.NoResultsError, fn -> Backlog.get_story!(story.id) end
    end

    test "change_story/1 returns a story changeset" do
      story = story_fixture()
      assert %Ecto.Changeset{} = Backlog.change_story(story)
    end
  end
end
