using DataFrames
using DynamicsPlots
using Plots, RecipesBase, Test

df = DataFrame(x = 1:10, y = rand(10))
timeevolution(df, legend = :left)

include("../src/pointcloud.jl")
P = randn(2,100)
pointcloud(P)
P = [randn(2) for _ in 1:100]
pointcloud!(P, color = :red)

include("../src/geometry.jl")
circle([-0,0],2,color = :red, fill = (0,0.1,:red))