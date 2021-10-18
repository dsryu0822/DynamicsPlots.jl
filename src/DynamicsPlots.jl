module DynamicsPlots

using Plots
using DataFrames

include("hiscatter.jl")
include("timeevolution.jl")

export hiscatter, timeevolution

end