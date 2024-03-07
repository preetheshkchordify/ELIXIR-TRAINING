defmodule Calculator do
  def add(x, y) do
    x + y
  end

  def subtract(x, y) do
    x - y
  end

  def multiply(x, y) do
    x * y
  end

  def divide(x, y) do
    if y == 0 do
      "Error: Divided by zero"
    else
      x / y
    end
  end

  def calculate(operation, x, y) do
    case operation do
      "+" -> add(x, y)
      "-" -> subtract(x, y)
      "*" -> multiply(x, y)
      "/" -> divide(x, y)
      _ -> "Invalid operation"
    end
  end
end

IO.puts("Enter the first number:")
first_number = String.trim(IO.gets(" |> ")) |> String.to_integer()

IO.puts("Enter the second number:")
second_number = String.trim(IO.gets(" |> ")) |> String.to_integer()

IO.puts("Enter the operation (+, -, *, /):")
operation = String.trim(IO.gets(" |> "))

result = Calculator.calculate(operation, first_number, second_number)

IO.puts("Result is: #{result}")
