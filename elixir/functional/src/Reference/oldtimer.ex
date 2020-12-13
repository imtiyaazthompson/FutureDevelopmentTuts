defmodule Oldtimer do
  @old 65
  @upper 33
  @lower 20
  @young 19

  def am_i_old(age) do
    # Declare a variable called reply
    reply = ""

    # call the function with the boolean expression as the first arg
    {age, reply} = check_old(age >= @old, {age, "You are old"})
    reply
  end

  # If age >= @old can be evaluated as true, pattern match the result of the expression
  # With the boolean true, if they match, bind the variable reply after do: to
  # the variable reply
  defp check_old(true, reply), do: reply

  # If the age cannot be avaluated as true, pattern match on a false boolean expression
  # Then destruct the reply, passing in the new tuple to call the next function
  # That will pattern match accordingly
  defp check_old(false, reply) do
    {age, msg} = reply
    check_middle(age >= @upper and age < @old, {age, "You are middle aged"})
  end

  defp check_middle(true, reply), do: reply

  defp check_middle(false, reply) do
    {age, msg} = reply
    check_adol(age >= @lower and age < @upper, {age, "You are adolescent"})
  end

  defp check_adol(true, reply), do: reply

  defp check_adol(false, reply) do
    {age, msg} = reply
    check_young(age < @young, {age, "You are young"})
  end

  defp check_young(true, reply), do: reply

  defp check_young(false, reply), do: nil
end
