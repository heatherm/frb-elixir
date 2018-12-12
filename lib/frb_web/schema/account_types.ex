defmodule FrbWeb.Schema.AccountTypes do
  use Absinthe.Schema.Notation

  @desc "A user"
  object :user do
    field :id, :id
    field :name, :string
  end
end