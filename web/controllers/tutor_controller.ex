defmodule Hdcy.TutorController do
  use Hdcy.Web, :controller

  alias Hdcy.Tutor

  def index(conn, _params) do
    tutors = Repo.all(Tutor)
    render(conn, "index.html", tutors: tutors)
  end

  def show(conn, %{"id" => id}) do
    tutor = Repo.get!(Tutor, id)
    render(conn, "show.html", tutor: tutor)
  end

end
