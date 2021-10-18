module DynamicsPlots

using Plots, RecipesBase
using DataFrames

include("hiscatter.jl")
include("timeevolution.jl")

export hiscatter, timeevolution

end