defmodule Thebacklog.Backlog.Story do
  use Ecto.Schema
  import Ecto.Changeset

  schema "stories" do
    field :body, :string

    timestamps()
  end

  @doc false
  def changeset(story, attrs) do
    story
    |> cast(attrs, [:body])
    |> validate_required([:body])
  end
end
