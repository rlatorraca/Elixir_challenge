defmodule GetmoreApiChallenge.Getmore.Product do
  use Ecto.Schema
  import Ecto.Changeset

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "products" do
    field :productCategory, :string
    field :productId, :integer
    field :productImage, :string
    field :productName, :string
    field :productPrice, :float
    field :productStock, :boolean, default: false

    timestamps()
  end

  @doc false
  def changeset(product, attrs) do
    product
    |> cast(attrs, [:productId, :productCategory, :productName, :productImage, :productStock, :productPrice])
    |> validate_required([:productId, :productCategory, :productName, :productImage, :productStock, :productPrice])
  end
end
