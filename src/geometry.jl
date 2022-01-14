function circle!(c,r)
    θ = LinRange(0,2π,180)
    plot!(r*cos.(θ) .+ c[1], r*sin.(θ) .+ c[2], label = :none)
end