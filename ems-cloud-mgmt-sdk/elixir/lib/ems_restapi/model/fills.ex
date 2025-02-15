# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule EMS-RESTAPI.Model.Fills do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"time",
    :"price",
    :"amount"
  ]

  @type t :: %__MODULE__{
    :"time" => DateTime | nil,
    :"price" => float() | nil,
    :"amount" => float() | nil
  }
end

defimpl Poison.Decoder, for: EMS-RESTAPI.Model.Fills do
  import EMS-RESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"time", :struct, EMS-RESTAPI.Model.Date, options)
  end
end

