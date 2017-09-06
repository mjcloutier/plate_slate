defmodule PlateSlate.Menu.Item do
  use Ecto.Schema
  import Ecto.Changeset
  alias PlateSlate.Menu.Item


  schema "items" do
    field :description, :string
    field :name, :string
    field :category_id, :id

    timestamps()
  end

  @doc false
  def changeset(%Item{} = item, attrs) do
    item
    |> cast(attrs, [:name, :description])
    |> validate_required([:name, :description])
  end
end
