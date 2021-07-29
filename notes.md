from the Julia repl,

`julia>` prompt is "julian mode"
- `;` enters the shell
- `]` enters the Package manager
- `?` enters interactive help. The `?` prepends the function name, unlike ipytyhon

`@` notation forms
- @time
- @assert
- @async
- `using Test` then `@test` sets up assertion tests
- To see more type `@` then tab autocomplete in the repl


Look further into
- https://docs.julialang.org/en/v1/manual/documentation/
- Doctest

Authors suggest
- adding `using Revise; using OhMyREPL` to `startup.j`
- `]st` is short for `]status`

States I've changed
- `~/.julia/config/startup.jl` has some functions and uses OhMyREPL and Revise

Now we know
- Julia is 1 indexed. 
- Indexing is inclusive, for example `["abc"][1:2] == "ab"`
- `using REPL` then `REPL.find_hist_file()` pulls up the path for the julia repl history. Try this: `open(REPL.find_hist_file()) do io; read(io, String) |> println; end` or `;tail -n 10 ~/.julia/logs/repl_history.jl`
- If a package ain't listed with `Pkg`, we can install packages from repos `] add https://github.comJuliaLang/Exaple.jl.git` or `] add https://github.comJuliaLang/Exaple.jl.git#name_of_branch`
- `using OhMyREPL` adds syntax highlighting and some other features `https://github.com/KristofferC/OhMyREPL.jl`
- explicitly disallowed identifiers: do, end, try, catch, if, else (and a few more)
- `#` is the line comment, `#= stuff =#` is the multiline approach
- `*` is the string concatenation operator, or we can use the `string("function", " ", "to concat")`. `string("Your total is " * total)`
- Or string interpolation works with `"Your total is $total"` and even `"One plus two is $(1 + 2)"` (dynamic type conversion, too, it seems here)]
- `[1, 2, 3][end]` or `[1, 2, 3][begin:2]` and `"hello"[end-2:end]` syntax is nice! (all inclusive resort nice!)
