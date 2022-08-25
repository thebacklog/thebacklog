defmodule Thebacklog.Repo do
  use Ecto.Repo,
    otp_app: :thebacklog,
    adapter: Ecto.Adapters.Postgres
end
