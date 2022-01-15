function circle!(c,r)
    θ = LinRange(0,2π,180)
    plot!(r*cos.(θ) .+ c[1], r*sin.(θ) .+ c[2], label = :none)
end

@userplot Circle
@recipe function f(cc::Circle)
    c = cc.args[1]
    r = cc.args[2]

    θ = LinRange(0,2π,180)
    x = r*cos.(θ) .+ c[1]
    y = r*sin.(θ) .+ c[2]
    @series begin
        x, y
    end
end