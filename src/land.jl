"""
    land!(axis; landpath, args...)

Add a land polygon to `axis::Makie.Axis`. This will be placed on top of any graphics that 
are already on the axis. The land is gray by default. Returns `Makie.poly!`.

### Optional Arguments

- `resolution`: Takes a value in `["h", "m",  "l"]`.
 - `"h"`: 10 m 
 - `"h"`: 50 m (default)
 - `"l"`: 110 m 
Plotting is accomplished via geojson files from https://github.com/nvkelso/natural-earth-vector/tree/master/geojson
- `args...`: All keyword arguments are passed directly to `Makie.poly!`.
"""
function land!(
    axis::Axis;
    resolution::String = "m",
    args...)

    if !(resolution in ["h", "m", "l"])
        error("resolution must be one of $(["h", "m", "l"])")
    end

    if resolution == "h"
        landpath = joinpath(@__DIR__, "..", "geojson", "ne_10m_land.geojson")
    elseif resolution == "m"
        landpath = joinpath(@__DIR__, "..", "geojson", "ne_50m_land.geojson")
    elseif resolution == "l"
        landpath = joinpath(@__DIR__, "..", "geojson", "ne_110m_land.geojson")
    end

    landpoly = GeoJSON.read(read(landpath, String))
    defaults = (color = RGBf(0.5,0.5,0.5),)

    for feature in landpoly, poly in feature.geometry
        poly!(axis, poly; merge(defaults, args)...)
    end
end