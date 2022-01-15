include("../src/hiscatter.jl")

using Distributions
using Plots, RecipesBase

data = rand(Pareto(2),100)

hiscatter(data,10)
hiscatter(data,20)