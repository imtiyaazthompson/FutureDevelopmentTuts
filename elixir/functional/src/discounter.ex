defmodule Discounter do
  def final_price(price, discount) do
    IO.puts(price*((100 - discount)/100))
  end
end
