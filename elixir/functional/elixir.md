# Interactive shell
`$iex`

# Hello World
```elixir
	IO.puts "Hello, World!"
```
+ save with `.exs` extension
+ run with `elixir file.exs`

# Facts
+ In functional programming, all values you create in your program are immutable
+ Each function will have a stable value
+ Therefore lock mechanisms won't be required in concurrency
+ Operations applied on any variable will return new values and not change the variable itself
+ Functions recieve data, complete some operation and return a value
+ The function's result is affected only by the functions's arguments
+ The function doesn't generate effects beyond the value it returns

# Simple Function
```elixir
	add_2 = fn(n) -> n + 2 end
```
+ call with `add_2.(2)`, will return 4
+ input, process, output => `pure function`
+ Functions that yield unpredictable results are known as `impure functions`

# Representing values
+ `string` - Text - "Hello, World!!!", "I like math"
+ `integer` - Integer numbers - 42, 101, 10_000, -35
+ `float` - Real numbers - 10.8, 0.74678, -1.45
+ `boolean` - Logical operations - true, false
+ `atom` - Identifiers - :ok, :error, :exit
+ `tuple` - Building collections of known sizes - {:ok, "Hello"}, {1, 2, 3}
+ `list` - Building collections of unknown sizes - [1, 2], ["a", "b"]
+ `map` - Looking up a value in a dictionary by key - %{id: 123, name: "Anna"},
					%{12 => "User"}
+ `nil` - Representing absence of value nilm

+ The `atom` type is a constant, and its name is the value - `:hello`
+ We create `expressions` for the PC to `evaluate` to a `result`
```elixir
	$42
	=> 42
```
+ The expression `42` evaluates to the result `42`

# String Concatenation
`"hello" <> " world"`
+ The `+` operator will throw an exception when trying to concatenate 2 strings

# Logical Expressions
+ Follows from Java and Python

# Weird Expressions
+ Pythonic logic operators are used for booleans however
```elixir
	$"hello" && true
	=> true
	$true && "hello"
	=> "hello"
```
+ If the `LHS` can be evaluated as `true` return the RHS
```elixir
	$1 || "hello"
	=> 1
	$nil || "hello"
	=> "hello"
```
+ If the `LHS` can be evaluated as true, return `LHS` otherwise return `RHS`

# Binding values in variables
+ Same old same old
+ Snake casing
+ variable names must start with lower case

# Anonymous Functions
+ Take input, process it and provide an output
+ `<func_name> = fn <params> -> <function body> end`
+ Call with: `func_name.(args)`
+ Anonymous because they have no global name and are bound to a variable to be reused

# String Interpolation
+ `"Hello, #{name}"`

# Functions as first class citizens
+ Functions are like any other value
+ Functions are values of type `function`
+ A function that expects a function
```elixir
	total_price = fn price, fee -> price + fee.(price) end
```
+ Functions that have parameters prefixed with an underscore `_param` means that
that parameter might not even be used within the function

# Naming functions
+ Named functions are defined inside of modules
+ `atoms` or `Aliases` can be used to name functions
+ An `Alias` starts with a capital
+ To invoke a function: `<module name>.<function name>(<params>)`
+ Defining a `module`: `defmodule ModuleName do <functions ...> end`
+ File name must be lower case and the same name as the module

# IEX compiler
+ Run iex in the same directory
+ Compile modules using `c(<module name>)`

# Namespaces and Functions continued
+ Use `namespaces` for modules
+ The namespace is the same name as the directory the module is in
+ Written as `defmodule NameSpace.ModuleName do <functions ...> end`
+ Named functions can be imported so that the module name does not always
	have to prepend the function name
+ Module attributes: `@name <something>`, can be used as constants
+ When used as a constant it is a variable available throughout the entire module
+ When importing a named function, must always pass in its name and arity
+ Arity is how many parameters it expects
```elixir
	import File, only: [write:3, read:1]
```
+ The above will only import the `read` and `write` functions from the `File` module
+ All functions in the module can be imported, However being explicit is very much preferred and
	recommended
+ Named functions can be wrapped inside Anonymous functions passing arguments
	through the anon functions and into the named function
+ Or use elixir's provided operator to use a named function as a value:
	`my_func = &Module.func/<arity>`
+ `&` captures a reference to the function
+ `=` binds the function to a variable
