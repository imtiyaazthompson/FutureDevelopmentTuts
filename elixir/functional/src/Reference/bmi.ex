defmodule BMI do
  @max 25.0

  def compute_bmi(mass, height) do
    hsq = height*height
    bmi = mass/hsq

    reply = nil
    message = nil
    is_overweight(bmi >= @max, {reply, message})
  end

  defp is_overweight(true, reply), do: {:yes, "overweight"}
  defp is_overweight(false, reply), do: {:no, "healthy"}
end
