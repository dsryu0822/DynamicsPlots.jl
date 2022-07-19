"""
    timevolution

This plot uses given dataframe and its column names.
"""
@userplot TimEvolution
@recipe function f(te::TimeEvolution)
    df = te.args[1]

    column_names = names(df)
    for (column_index, column_name) ∈ enumerate(column_names)
        @series begin
            label --> column_name
            color --> ppt[column_index]
            df[:,column_index]
        end
    end
end