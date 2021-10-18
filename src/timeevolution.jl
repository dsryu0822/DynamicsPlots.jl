"""
    timeevolution

This plot uses given dataframe and its column names.
"""


@userplot TimeEvolution
@recipe function f(te::TimeEvolution)
    df = te.args[1]
    linealpha --> 0.5

    column_names = names(df)
    for (column_index, column_name) ∈ enumerate(column_names)
        @series begin
            label --> column_name
            df[:,column_index]
        end
    end
end