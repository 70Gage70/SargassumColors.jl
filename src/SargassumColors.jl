module SargassumColors

using Colors, ColorSchemes

include(join(@__DIR__, "eureka.jl"))
export EUREKA

include(join(@__DIR__, "shadden.jl"))
export SHADDEN

end
