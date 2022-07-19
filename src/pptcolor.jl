ppt = (
    blue = colorant"#0070C0",
    red = colorant"#C00000",
    green = colorant"#70AD47",
    purple = colorant"#7030A0",
    orange = colorant"#ED7D31",
    black = colorant"#000000",
    yellow = colorant"#FFC000",

    skyblue = colorant"#00B0F0",
    truered = colorant"#FF0000",
    milkygreen = colorant"#70AD47",
    navy = colorant"#203864",
    brown = colorant"#843C0C",
    gray = colorant"#888888",
    olive = colorant"#7F6000",

    magenta = colorant"#FF00FF",
    cyan = colorant"#00FFFF"
)

function PPT(n::Integer)
    return ppt[mod(n-1, length(ppt))+1]
end