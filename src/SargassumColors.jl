module SargassumColors

using Colors, ColorSchemes

include(joinpath(@__DIR__, "eureka.jl"))
export EUREKA

include(joinpath(@__DIR__, "shadden.jl"))
export SHADDEN

end
