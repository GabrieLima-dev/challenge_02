defmodule Challenge02 do
  def count_odd_numbers(list) do
    z = Enum.filter(list, fn x -> is_number?(x) && is_odd?(x) end)
    count(z)
  end

  defp is_number?(x) do
    String.contains?(x, ["1", "2", "3", "4", "5", "6", "7", "8", "9"])
  end

  defp is_odd?(y) do
    number = String.to_integer(y)
    rem(number, 2) != 0
  end

  defp count(z) do
    Enum.count(z)
  end
end
