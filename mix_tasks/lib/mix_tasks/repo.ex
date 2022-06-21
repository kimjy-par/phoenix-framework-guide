defmodule MixTasks.Repo do
  use Ecto.Repo,
    otp_app: :mix_tasks,
    adapter: Ecto.Adapters.Postgres
end
