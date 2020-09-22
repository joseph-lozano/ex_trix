defmodule ExTrix.Repo do
  use Ecto.Repo,
    otp_app: :ex_trix,
    adapter: Ecto.Adapters.Postgres
end
