# SargassumColors

This package provides two colormaps, `EUREKA` and `SHADDEN`, as well as a plotting theme `GEO_THEME()`.

These colormaps were created by the [Nonlinear Dynamics Group](https://nonlinear.earth.miami.edu/people/index.html) at the University of Miami.

## Installation

In the Julia REPL, execute the following

```julia
import Pkg
Pkg.add(url = "https://github.com/70Gage70/SargassumColors.jl.git")
```

## Visualization

### EUREKA

```julia
using SargassumColors

[SargassumColors.EUREKA[i] for i = range(0, 1, 100)]
```

[!["The Eureka colormap"](examples/eureka.svg)](https://70gage70.github.io/SargassumColors.jl/)

### SHADDEN

```julia
using SargassumColors

[SargassumColors.SHADDEN[i] for i = range(0, 1, 100)]
```

[!["The Shadden colormap"](examples/shadden.svg)](https://70gage70.github.io/SargassumColors.jl/)

## Usage

Each exported colormap is a [`ColorShemes.ColorScheme`](https://juliagraphics.github.io/ColorSchemes.jl/stable/) and therefore integrate with any plotting package that supports these. 

```julia
using SargassumColors
using Makie, CairoMakie

lines(1:10, 1:10, color = 1:10, linewidth = 6.0, colormap = SHADDEN)
```

[!["The Shadden colormap applied to a line"](examples/makie.png)](https://70gage70.github.io/SargassumFromAFAI.jl/)