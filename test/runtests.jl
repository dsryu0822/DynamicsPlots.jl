using DataFrames
using DynamicsPlots

df = DataFrame(x = 1:10, y = rand(10))
timeevolution(df, legend = :left)