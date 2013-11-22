using Base.Test
using TimeSeries

my_tests = ["test/date.jl",
            "test/io.jl",
            "test/lag.jl",
            "test/moving.jl",
            "test/returns.jl",
            "test/upto.jl"]

print_with_color(:cyan, "Running tests: ") 
println("")

for my_test in my_tests
    print_with_color(:magenta, "**   ") 
    print_with_color(:blue, "$my_test") 
    println("")
    include(my_test)
end
