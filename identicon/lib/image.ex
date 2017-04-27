defmodule Identicon.Image do
  @moduledoc """
  Defines all data related to an identicon image.
  """

  defstruct hex: nil,
    color: nil,
    grid: nil,
    pixel_map: nil
end
