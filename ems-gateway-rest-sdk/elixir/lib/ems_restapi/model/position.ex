# NOTE: This class is auto generated by OpenAPI Generator (https://openapi-generator.tech).
# https://openapi-generator.tech
# Do not edit the class manually.

defmodule EMS-RESTAPI.Model.Position do
  @moduledoc """
  
  """

  @derive [Poison.Encoder]
  defstruct [
    :"exchange_id",
    :"data"
  ]

  @type t :: %__MODULE__{
    :"exchange_id" => String.t | nil,
    :"data" => [EMS-RESTAPI.Model.PositionData.t] | nil
  }
end

defimpl Poison.Decoder, for: EMS-RESTAPI.Model.Position do
  import EMS-RESTAPI.Deserializer
  def decode(value, options) do
    value
    |> deserialize(:"data", :list, EMS-RESTAPI.Model.PositionData, options)
  end
end

