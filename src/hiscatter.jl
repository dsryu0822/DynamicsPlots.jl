@userplot HiScatter
@recipe function f(hs::HiScatter)
    data = hs.args[1]
    bin = hs.args[2]
    xaxis --> :log10
    yaxis --> :log10

    bin += 1
    m, M = minimum(data), maximum(data)
    stat_class = 10 .^ LinRange(log10(m), log10(M), bin)
    freq = [sum(data .< stat_class[2])]
    for k in 2:(bin-1)
        push!(freq, sum(stat_class[k] .≤ data .< stat_class[k+1]))
    end
    freq[end] += sum(data .≥ stat_class[end])
    x = stat_class[2:end][freq .> 0]
    y = freq[freq .> 0]
    # length(data) == sum(y)
    # println(bin)
    @series begin
        seriestype := :scatter
        xticks --> (10.0 .^((-8):8))[m .≤ 10.0 .^((-8):8) .≤ M]
        yticks --> (10.0 .^((-8):8))[stat_class[1] .≤ 10.0 .^((-8):8) .≤ stat_class[end]]
        x, y
    end
end