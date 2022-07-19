"""
    pointcloud

This plot uses matrix and vector of vector both.
"""
@userplot PointCloud
@recipe function f(pc::PointCloud)
    P = pc.args[1]

    x = []
    y = []
    if typeof(P) <: Matrix
        x = P[1,:]
        y = P[2,:]
    elseif typeof(P) <: Vector
        for p in P
            push!(x, p[1])
            push!(y, p[2])
        end
    end
    @series begin
        # label --> :none
        color --> ppt[column_index]
        seriestype := :scatter
        x, y
    end
end