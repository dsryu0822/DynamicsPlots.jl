function hiscatter(data; bin = 10,
    xaxis = :log10, yaxis = :log10, size = (600, 400), legend = :none,
    color = :black)
    a, b = minimum(data), maximum(data)

    if typeof(bin) == Int
        if xaxis == :linear
            stat_class = collect((a:((b - a) / bin):b))
        elseif xaxis == :log
            stat_class = 10 .^ (range(log(a), log(b), length = bin+1))
        elseif xaxis == :log2
            stat_class = 10 .^ (range(log2(a), log2(b), length = bin+1))
        else
            stat_class = 10 .^ (range(log10(a), log10(b), length = bin+1))
        end
    else
        stat_class = bin
    end
    
    freq = zeros(Int64, bin)
    freq[1] = sum(data .≤ stat_class[2])
    for i = 2:bin
        freq[i] = sum(stat_class[i] .< data .≤ stat_class[i+1])
    end
    pop!(stat_class)
    
    if length(data) == sum(freq)
        well_defined = (freq .> 0)
        
        return scatter(stat_class[well_defined], freq[well_defined],
        xaxis = xaxis, yaxis = yaxis, size = size, legend = legend,
        color = color) # stat_class, freq
    else
        error("something")
    end
end
