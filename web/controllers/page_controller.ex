defmodule Hdcy.PageController do
  use Hdcy.Web, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end


end
