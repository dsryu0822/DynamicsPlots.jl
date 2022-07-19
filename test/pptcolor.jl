PPT(3)

p1 = plot()
for k in 1:16
    plot!(p1, rand(10) .+ k, color = PPT(k), lw = 2)
end
p1