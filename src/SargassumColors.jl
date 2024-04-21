module SargassumColors

using Colors, ColorSchemes
using Makie
using GeoJSON

include(joinpath(@__DIR__, "eureka.jl"))
export EUREKA

include(joinpath(@__DIR__, "shadden.jl"))
export SHADDEN

include(joinpath(@__DIR__, "geo_theme.jl"))
export GEO_THEME

include(joinpath(@__DIR__, "land.jl"))
export land!

end
