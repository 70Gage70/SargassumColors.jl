module SargassumColors

using Makie, Colors, ColorSchemes
using NaturalEarth
using GeometryBasics, GeoInterface, GeoJSON
using ArgCheck

include(joinpath(@__DIR__, "eureka.jl"))
export EUREKA

include(joinpath(@__DIR__, "shadden.jl"))
export SHADDEN

include(joinpath(@__DIR__, "geo_theme.jl"))
export GEO_THEME

include(joinpath(@__DIR__, "geojson.jl"))
include(joinpath(@__DIR__, "land.jl"))
export land!

end
