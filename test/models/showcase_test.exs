defmodule Hdcy.ShowcaseTest do
  use Hdcy.ModelCase

  alias Hdcy.Showcase

  @valid_attrs %{desc: "some content", image: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Showcase.changeset(%Showcase{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Showcase.changeset(%Showcase{}, @invalid_attrs)
    refute changeset.valid?
  end
end
