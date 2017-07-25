defmodule Hdcy.Repo do
  use Ecto.Repo, otp_app: :hdcy
  use Scrivener, page_size: 10
end
