defmodule Hdcy.ShowcaseController do
  use Hdcy.Web, :controller

  alias Hdcy.Showcase

  def index(conn, _params) do
    showcases = Repo.all(Showcase)
    render(conn, "index.html", showcases: showcases)
  end

  def show(conn, %{"id" => id}) do
    showcase = Repo.get!(Showcase, id)
    render(conn, "show.html", showcase: showcase)
  end

end
