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

# Controlling program flow: Pattern Matching
+ Instead of `if ... else`, `pattern matching` is used
+ Pattern matching tries to make 2 things match
+ Simplest pattern matching expression: `$1 = 1`
+ `$2 = 1` will throw an error
+ Elixir will match everything if a variable is on the left hand side
+ This binds the value of the RHS expression to the LHS variable
+ Binds and rebinds can be avoided by using the `^` pin operator
```elixir
	x = 1
	1 = x
	=> 1

	^x = 2
	=> Error
```

# Unpacking data from different datatypes
+ Pattern matching is also useful for extracting parts of values to variables in
	a process called destructuring

# Matching parts of a string
+ Make use of the `<>` operator
```elixir
	$"Auth: " <> credentials = "Auth: Bob Ross XD201*"
	$credentials
	=>"Bob Ross XD201*"
```
+ A varaible cannot be used on the LHS of `<>`
+ The above attempts to match the LHS with the RHS, by destructuring the string
	according to `<>`, where it matches `"Auth: "` and stores the rest of the string
	in the variable credentials

# Matching Tuples
+ Indexed like in python
+ Multiple variable bindings
```elixir
	${a,b,c} = {1,2,3}
	$a
	=> 1
	$b
	=> 2
```
+ Variable binding in action using destructuring
+ Unpacking values from the tuple and binding them to variables
+ This is the tuple: `{1,2,3}` in python it would look like this `(1,2,3)`
+ A simple example of control flow using pattern matching
```elixir
	get_answer = fn -> {:ok, 27} end
	{:ok, answer} = get_answer.()
	IO.puts("#{answer}")
```
+ Here we only want to display the answer if we get a return with an `:ok` result
+ Here we use destructuring and pattern matching again
+ We match the 0 index of the RHS to the 0 index of the LHS, and similarly to the RHS
+ If the 0 indexes match, we can then print out the answer we got from destructuring
+ The wildcard `_` accepts everything when matching
+ `Integer.parse(<string>)` returns a tuple, with the first element being the
	number parsed and the second being whatever part of the string that is still left

# Matching Lists
+ Tuples are for fixed size collections
+ Lists are represented by linked Lists
+ Similar destrucuring principles: `[a,b,c] = [1,2,3]`
+ The wildcard `_` can be used for elixir to ignore certain list elements when matching
```elixir
	[_,a,a] = ["juice","apple","apple"]
	a
	=> "apple"
```
+ In this case `a` can only match 1 thing as it cannot be two different values at
	the same time
+ `|` splits a list
```elixir
	[head|tail] = [1,2,3,4]
	[a,b|c] = [1,2,3]
```
+ where `head = 1` and `tail = [2,3,4]`
+  and `a = 1`, `b = 2`, `c = [3]`

# Matching maps
+ Example of a map `%{:key_1 => value_1, :key_2 => value_2, :key_3 => value_3}`
+ And with pattern matching to access the elements of a map
```elixir
	my_map = %{:id => 1234, :name => "John", :surname => "Smith"}
	%{:id => id} = my_map
	id
	=> 1234
```
+ All the keys for a match need not be provided
+ Useful in validation as well
```elixir
	%{:name => name = "john"} = my_map
```
+ First look at `name = "john"` in isolation, it is binding `"john"` to the name variable
+ Then a match is performed where the `:name` key from the map is matched against the `name` variable on the LHS
+ If the `name` does not equal `:name` in `my_map` an error is thrown

# Functions using pattern matching
+ Private function clauses
```elixir
	defp check(true, number, _), do: number
```
+ The above private function will be run for an argument that can be evaluated as
	`true`
+ Then we bind the `number` to the variable `number` passed as an argument
+ Function clauses are the `if...else` of functional programming
+ Functional clauses must be stack, that is a normal function cannot be inbetween
	two functional clauses
+ For a block of functional clauses, they must be some time of helper function
	named the same that performs logic checks
+ Also notice the different way of defining a named function
```elixir
	def my_func(<params>) do
		<code>
	end

	def my_func(<params>), do: <code>
```
+ Where the second definition ommits the end clause. Useful for short named functions
