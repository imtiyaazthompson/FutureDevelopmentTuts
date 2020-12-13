defmodule Controlflow do

  def compare(num_1, num_2) do
    check_equals(num_1, num_2)
    check_lg(num_1 > num_2, num_1, num_2)

  defp check_equals(true), do: 0
  defp check_lg(true), do: 1
  defp check_lg(false), do: -1
end
