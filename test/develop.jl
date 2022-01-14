using Plots, RecipesBase, Test

include("../src/pointcloud.jl")

P = randn(2,100)
pointcloud(P)

P = [randn(2) for _ in 1:100]
pointcloud!(P, color = :red)