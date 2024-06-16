"""
    land!(axis; resolution, grid, landcolor, args...)

Add a land heatmap to `axis::Makie.Axis`. This will be placed on top of any graphics that 
are already on the axis. The land is gray by default. Returns `Makie.heatmap!`.

The land data is provided by `GeoDatasets.jl` which downloads the data from basemap.

### Optional Arguments

- `resolution`: The parameter resolution should be either 'c','l','i','h' or 'f' (standing \
for crude, low, intermediate, high and full resolution). This controls which features are \
visible, with smaller landmass "switching on" at higher resolutions.
- `grid`: The resolution in arc minutes and should be either 1.25, 2.5, 5 or 10. The smaller `grid`, the \
more detail is visible at the given `resolution`. 
- `landcolor`: The color of the landmass. Default `RGBf(0.5, 0.5, 0.5)`.
- `args...`: All keyword arguments are passed directly to `Makie.heatmap!`.
"""
function land!(
    axis::Axis;
    resolution::Union{String, Char} = "i",
    grid::Real = 2.5,
    landcolor = RGBf(0.5, 0.5, 0.5),
    args...)

    lon, lat, data = GeoDatasets.landseamask(;resolution = resolution, grid = grid)
    custom_colors = [RGBA(0, 0, 0, 0), landcolor, landcolor]
    defaults = (colorrange = (0, 2), colormap = custom_colors)
    
    return heatmap!(axis, lon, lat, data; merge(defaults, args)...)
end