module SargassumColors

using Colors, ColorSchemes
using Makie

include(joinpath(@__DIR__, "eureka.jl"))
export EUREKA

include(joinpath(@__DIR__, "shadden.jl"))
export SHADDEN

include(joinpath(@__DIR__, "geo_theme.jl"))
export GEO_THEME

end
