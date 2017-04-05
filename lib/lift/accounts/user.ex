defmodule Lift.Accounts.User do
  use Ecto.Schema

  schema "accounts_users" do
    field :name, :string

    timestamps()
  end
end
