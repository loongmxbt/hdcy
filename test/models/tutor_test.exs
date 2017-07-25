defmodule Hdcy.TutorTest do
  use Hdcy.ModelCase

  alias Hdcy.Tutor

  @valid_attrs %{body: "some content", desc: "some content", image: "some content", name: "some content"}
  @invalid_attrs %{}

  test "changeset with valid attributes" do
    changeset = Tutor.changeset(%Tutor{}, @valid_attrs)
    assert changeset.valid?
  end

  test "changeset with invalid attributes" do
    changeset = Tutor.changeset(%Tutor{}, @invalid_attrs)
    refute changeset.valid?
  end
end
